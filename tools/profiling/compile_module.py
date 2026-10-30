"""Compiles a profiling module with the SDK's pinned Blackfin tools: the first
half of `sdk.py build --profiling on` (control sweep on), which needs no
firmware. CI runs it on Windows, where the SDK publishes its pinned tools
(.github/workflows/profiling-module.yml); tools/profiling/finish_package.py
then patches the owner's stock OS with the module on their own computer.

    python tools/profiling/compile_module.py <sdk> <out> <machine folder>...

Writes <out>/analysis/ (module.bin, module.elf, compile-report.json and the
objects, exactly as a build's analysis folder) and <out>/module.json (the
release version, the patched stock-table profile and the machine IDs). The
output holds only code compiled from the machines and the SDK: no firmware.
"""
import json, os, sys
from pathlib import Path

sdk, out, folders = Path(sys.argv[1]).resolve(), Path(sys.argv[2]).resolve(), [Path(p).resolve() for p in sys.argv[3:]]
os.chdir(sdk)  # the SDK's templates and tools are addressed from its root
sys.path.insert(0, str(sdk))
from tooling import native, startup_label  # noqa: E402

entries = native.read_collection(None, folders, [])
profile, machines, definitions = native.configuration(entries, None)
toolchain, compiler = native.resolve_toolchain(None, None)
out.mkdir(parents=True)
analysis = out / 'analysis'
analysis.mkdir()
version = startup_label.release_version()
module, report, patch_profile = native.compile_collection(analysis, toolchain, compiler, profile, machines,
                                                          definitions, version, True, True)
(out / 'module.json').write_text(json.dumps({'version': version, 'patch_profile': patch_profile,
                                             'machines': [m.id for m in machines], 'linked': report['linked'],
                                             'module_sha256': report['module_sha256']}, indent=1))
print(json.dumps(report['sizes'], indent=2))
print('Linked:', report['linked'], ' benchmark cases:', len(report['benchmark_cases']))
print('Audio stack bytes:', report['audio_stack_bytes'])
