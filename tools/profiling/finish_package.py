"""Patches the owner's stock OP-XY OS 1.2.1 with a profiling module compiled by
tools/profiling/compile_module.py: the second half of `sdk.py build`, using
the SDK's own code (native.build's steps after compile_collection), for a
computer without the SDK's pinned tools. Run it where the stock OS lives;
the result is private firmware, never to be committed or published.

    python tools/profiling/finish_package.py <sdk> <module dir> <stock os.ldr> <out> <machine folder>...

The machine folders must be at the commits the module was compiled from: the
compile report's source hashes are checked against them here. The package
has the layout a `sdk.py build` package has (candidate/, analysis/,
manifest.json, layout.json), so `sdk.py profile benchmark` and
`profile report` accept it. It has no verification.json: rebuilding to
verify needs the pinned tools.
"""
import json, os, shutil, sys
from pathlib import Path

sdk, module_dir, stock_os, out = (Path(p).resolve() for p in sys.argv[1:5])
folders = [Path(p).resolve() for p in sys.argv[5:]]
os.chdir(sdk)
sys.path.insert(0, str(sdk))
from tooling import native  # noqa: E402
from tooling.formats import require, sha  # noqa: E402
from tooling.pipeline import child, read, save_json  # noqa: E402

entries = native.read_collection(None, folders, [])
profile, machines, _definitions = native.configuration(entries, None)
built = json.loads((module_dir / 'module.json').read_text())
require(built['machines'] == [m.id for m in machines], 'The module was compiled for other machines')
stock = read(stock_os)
require(sha(stock) == profile['stock_sha256'], 'Stock OS hash mismatch: use the untouched OS 1.2.1 os.ldr')
catalog = read(native.STOCK_CONTENT / 'op1_factory.json')
require(sha(catalog) == profile['stock_catalog_sha256'], 'Stock catalog hash mismatch')
report_bytes = read(module_dir / 'analysis' / 'compile-report.json')
report = json.loads(report_bytes)
module = read(module_dir / 'analysis' / 'module.bin')
require(sha(module) == report['module_sha256'] == built['module_sha256'], 'Module does not match its compile report')
require(report['profiling'] is True and report.get('benchmark_sweep') is True, 'Not a profiling sweep module')
# The sources compiled are the sources here (machines and SDK alike).
here = native.provenance(machines)
require(here == report['sources'], 'Machine or SDK sources differ from the compiled module: ' +
        ', '.join(sorted(k for k in set(here) | set(report['sources']) if here.get(k) != report['sources'].get(k)))[:400])

output = native.fresh_output(out)
shutil.copytree(module_dir / 'analysis', output / 'analysis')
prepared = native.prepare_assets(catalog, profile, native.linked_in(machines, report))
prepared['os.ldr'] = native.assemble(stock, module, built['patch_profile'], profile, len(profile['patches']),
                                     set(report['services']), True)
for name, data in prepared.items():
    path = child(output / 'candidate', name)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)
tracked = ['candidate/' + name for name in prepared] + ['analysis/module.bin', 'analysis/module.elf'] + native.ANALYSIS
save_json(output / 'manifest.json', dict(schema=1, target=native.TARGET, version=built['version'], collection=entries,
                                         profiling=True, benchmark_sweep=True,
                                         files={name: sha(read(output / name)) for name in tracked}))
save_json(output / 'layout.json', native.layout_document(native.numbers_after(None, machines)))
print('Package:', output)
for path in sorted(p for p in (output / 'candidate').rglob('*') if p.is_file()):
    print('  candidate/' + path.relative_to(output / 'candidate').as_posix(), sha(read(path))[:12])
print('Benchmark cases:', len(report['benchmark_cases']))
