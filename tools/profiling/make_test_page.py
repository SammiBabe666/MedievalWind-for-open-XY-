"""Writes a one-file Chrome page that runs the SDK's CPU benchmark on an OP-XY
over Web MIDI: the same protocol and checks as the SDK's collector
(tools/benchmark.py in Open-XY), with no terminal. Each run downloads a
capture in the collector's format, so `sdk.py profile report` accepts it.

    python tools/profiling/make_test_page.py <sdk> <package> <out.html> <tag>

The page is bound to one package: it embeds that package's identity and the
reports its firmware sends, and refuses a device that is not in normal mode on
OS 1.2.1. It sends only the collector's three commands (greet, identity,
benchmark) and never installs anything.
"""
import json, sys
from pathlib import Path

sdk, package, out, tag = Path(sys.argv[1]), Path(sys.argv[2]), Path(sys.argv[3]), sys.argv[4]
sys.path.insert(0, str(sdk.resolve()))
from tooling.profile_report import package_data  # noqa: E402

_manifest, report, identity = package_data(package)
expected = report['benchmark_cases']
machines = [c['name'] for c in expected if c.get('source') == 'sdk' and not c.get('setting') and not c.get('combined')]
data = json.dumps({'tag': tag, 'identity': identity, 'expected': expected, 'machines': machines})

PAGE = r'''<!DOCTYPE html>
<html lang="en"><head><meta charset="utf-8">
<title>CPU test @TAG@</title>
<style>
 body{background:#0b0b0b;color:#e8e8e8;font:15px/1.5 -apple-system,system-ui,sans-serif;max-width:860px;margin:40px auto;padding:0 20px}
 h1{font-weight:300;letter-spacing:.08em;margin:0 0 4px} .muted{color:#8a8a8a}
 button{background:#e8e8e8;color:#000;border:0;border-radius:6px;padding:10px 18px;font-size:15px;cursor:pointer;margin:6px 6px 6px 0}
 button:disabled{opacity:.35;cursor:default} ol li{margin:4px 0}
 #log{background:#151515;border:1px solid #2a2a2a;border-radius:6px;padding:10px;height:220px;overflow:auto;font:12px/1.4 ui-monospace,monospace;white-space:pre-wrap}
 table{border-collapse:collapse;margin:8px 0 18px;width:100%} td,th{border-bottom:1px solid #2a2a2a;padding:4px 8px;text-align:left;font-size:13px}
 td.n{text-align:right;font-variant-numeric:tabular-nums} .big{font-size:20px} .warn{color:#ffb4a0} .ok{color:#b8f0c0}
</style></head><body>
<h1>CPU test</h1>
<div class="muted">Build <b>@TAG@</b> · machines: <span id="machines"></span> · firmware <span id="fw"></span></div>
<h3>Before you start</h3>
<ol>
 <li>The OP-XY runs the matching test OS (build @TAG@), started normally, connected by USB.</li>
 <li>Save your work and stop playback. The test plays its own notes and changes temporary settings; don't touch the OP-XY while it runs and don't save afterwards.</li>
 <li>Quit other apps using the OP-XY's MIDI (DAWs, Field Kit, other builder tabs). USB audio off.</li>
</ol>
<button id="connect">1. Connect to the OP-XY</button>
<button id="run" disabled>2. Run measurement 1</button>
<div id="status" class="big muted">Not connected.</div>
<div id="results"></div>
<div class="muted">Each run downloads <code>@TAG@-run-N.json</code>. Run three times, then send the three files back.</div>
<h3>Log</h3><div id="log"></div>
<script>
const D = @DATA@;
const HEAD = [0xf0, 0x00, 0x20, 0x76, 0x21, 0x66], ROUTE = 0x21;
const TABLE = (h => Array.from({length: 256}, (_, i) => parseInt(h.substr(i * 2, 2), 16)))(
 'ead496a8122c6e507f41033d87b9fbc5a59bd9e75d63211f300e4c72c8f6b48a744a08368cb2f0cee1df9da31927655b3b054779c3fdbf81ae90d2ec56682a14b38dcff14b75370926185a64dee0a29cfcc280be043a78466957152b91afedd32d13516fd5eba997b886c4fa407e3c02625c1e209aa4e6d8f7c98bb50f31734d5866241aa09edce2cdf3b18f350b497717296b55efd193ad82bcfec07a440638c6f8ba843e00427c536d2f11ab95d7e989b7f5cb714f0d331c22605ee4da98a6013f7d43f9c785bb94aae8d66c52102e4e70320cb688caf4dbe5a799231d5f619fa1e3dd67591b250a347648f2cc8eb0d0eeac922816546a457b3907bd83c1ff');
const $ = id => document.getElementById(id);
const log = t => { $('log').textContent += t + '\n'; $('log').scrollTop = 1e9; };
const hex = b => Array.from(b, x => x.toString(16).padStart(2, '0')).join('');
const crc = b => { let c = 0; for (const x of b) c = TABLE[c ^ x]; return c; };
function cobs(b) { const out = [], part = []; for (const x of b) { if (!x) { out.push(part.length + 1, ...part); part.length = 0; }
  else { part.push(x); if (part.length === 254) { out.push(255, ...part); part.length = 0; } } } out.push(part.length + 1, ...part); return out; }
function uncobs(b) { const out = []; let i = 0; while (i < b.length) { const n = b[i++]; if (!n || i + n - 1 > b.length) throw new Error('bad COBS');
  out.push(...b.slice(i, i + n - 1)); i += n - 1; if (n < 255 && i < b.length) out.push(0); } return out; }
function pack(b) { const out = []; for (let i = 0; i < b.length; i += 7) { const g = b.slice(i, i + 7); let m = 0; g.forEach((x, j) => m |= (x >> 7) << j); out.push(m, ...g.map(x => x & 127)); } return out; }
function unpack(b) { if (b.some(x => x > 127)) throw new Error('non7bit'); const out = []; for (let i = 0; i < b.length; i += 8) { const m = b[i], g = b.slice(i + 1, i + 8);
  if (m >> g.length) throw new Error('invalid mask'); g.forEach((x, j) => out.push(x | ((m >> j) & 1) << 7)); } return out; }
function frame(route, cmd, seq) { const b = [route, seq, cmd, 0]; return [...HEAD, ...pack([...cobs([...b, crc(b)]), 0]), 0xf7]; }
// The collector's own self-test.
(() => { for (const b of [[], [0], [97, 0, 98], Array.from({length: 256}, (_, i) => i), Array(520).fill(255)]) {
  if (hex(uncobs(cobs(b))) !== hex(b) || hex(unpack(pack(b))) !== hex(b)) throw new Error('codec roundtrip'); }
  if (hex(cobs([0])) !== '0101' || hex(cobs([97, 98, 99])) !== '04616263') throw new Error('COBS vector');
  if (frame(0x21, 9, 0).length > 64) throw new Error('frame bounds'); })();

let input = null, output = null, record = null, pending = [], ordinal = 0, reports = 0, runs = 0, listening = false;
$('machines').textContent = D.machines.join(', ');
$('fw').textContent = D.identity.firmware_sha256.slice(0, 12);
$('run').textContent = '2. Run measurement 1';

function onMessage(event) {
  if (!listening || !record) return;
  const b = Array.from(event.data);
  if (b.length < 7 || HEAD.some((x, i) => b[i] !== x) || b[b.length - 1] !== 0xf7) return;
  try { pending.push(...unpack(b.slice(HEAD.length, -1))); } catch (e) { record.errors.push(e.message); return; }
  if (pending.length > 8192) { record.errors.push('unframed receive limit'); pending = []; return; }
  let split;
  while ((split = pending.indexOf(0)) >= 0) {
    const chunk = pending.slice(0, split); pending = pending.slice(split + 1);
    if (!chunk.length) continue;
    let f;
    try { f = uncobs(chunk); if (f.length < 5 || f.length !== f[3] + 5 || crc(f.slice(0, -1)) !== f[f.length - 1]) throw new Error('bad frame length/CRC'); }
    catch (e) { record.errors.push(e.message); continue; }
    const payload = f.slice(4, -1), text = new TextDecoder('utf-8').decode(new Uint8Array(payload));
    const item = {route: f[0], seq: f[1], command: f[2], payload_hex: hex(payload), text};
    record.frames.push(item);
    if (item.command === 0x94 && item.route === 0x12) { reports++; $('status').textContent = `Running: ${reports} of ${D.expected.length} reports`; }
    const clean = text.replace(/\0/g, '').trim();
    if (f[2] === 10) { record.identity = Object.fromEntries(clean.split(';').filter(x => x.includes(':')).map(x => [x.slice(0, x.indexOf(':')), x.slice(x.indexOf(':') + 1)]));
      log('IDENTITY ' + JSON.stringify(record.identity)); }
    else if (/PRODUCER|FILTER|RENDER|\[\d+\/\d+\]|max:|avg:/.test(clean)) log(clean);
  }
}
const sleep = ms => new Promise(r => setTimeout(r, ms));
function send(command, route = ROUTE) {
  const b = frame(route, command, ordinal); ordinal = (ordinal + 1) & 255;
  record.transmissions.push({command, hex: hex(b)}); output.send(b);
}
async function listen(seconds, want = null) {
  const end = performance.now() + seconds * 1000; let stopAt = null;
  while (performance.now() < end) {
    if (want !== null && reports >= want && stopAt === null) stopAt = performance.now() + 10000;  // still refuse an extra report
    if (stopAt !== null && performance.now() > stopAt) break;
    await sleep(50);
  }
}
$('connect').onclick = async () => {
  try {
    const access = await navigator.requestMIDIAccess({sysex: true});
    const pat = /OP[\s_-]*XY/i;
    const ins = [...access.inputs.values()].filter(p => pat.test(p.name)), outs = [...access.outputs.values()].filter(p => pat.test(p.name));
    if (ins.length !== 1 || outs.length !== 1) throw new Error('Expected exactly one OP-XY MIDI input and output; found ' +
      JSON.stringify({inputs: [...access.inputs.values()].map(p => p.name), outputs: [...access.outputs.values()].map(p => p.name)}));
    input = ins[0]; output = outs[0]; await input.open(); await output.open();
    input.onmidimessage = onMessage;
    $('status').textContent = 'Connected to ' + input.name + '. Ready.'; $('status').className = 'big';
    $('run').disabled = false; log('Connected: ' + input.name + ' / ' + output.name);
  } catch (e) { $('status').textContent = 'Could not connect: ' + e.message; $('status').className = 'big warn'; }
};
$('run').onclick = async () => {
  $('run').disabled = true; $('connect').disabled = true;
  const n = runs + 1;
  record = {utc: new Date().toISOString(), mode: 'benchmark', route: ROUTE, collector_sha256: D.collector, expected_cases: D.expected,
    transmissions: [], frames: [], errors: [], identity: null, complete: false, package: D.identity,
    ports: {input: input.name, output: output.name}, collector: 'browser page (Web MIDI), protocol of Open-XY tools/benchmark.py'};
  pending = []; reports = 0; listening = true;
  try {
    $('status').textContent = `Measurement ${n}: greeting the OP-XY…`; $('status').className = 'big';
    send(5, 0x21); await listen(1);
    send(9); await listen(3);
    const id = record.identity || {};
    if (id.mode !== 'normal' || !['OP-XY', 'OP-1'].includes(id.product) || id.os_version !== '1.2.1')
      throw new Error('Normal OS 1.2.1 not confirmed (identity ' + JSON.stringify(id) + '); benchmark not sent. Start the OP-XY normally, not in boot or transfer mode.');
    reports = 0;
    $('status').textContent = `Measurement ${n}: running. Don't touch the OP-XY…`;
    send(0xc8);
    await listen(Math.max(60, 3 * D.expected.length + 15), D.expected.length);
    if (pending.length) record.errors.push('Truncated diagnostic frame');
    record.complete = true;
  } catch (e) { record.errors.push(e.message); log('ERROR ' + e.message); }
  listening = false;
  const got = record.frames.filter(f => f.command === 0x94).length;
  const blob = new Blob([JSON.stringify(record, null, 2)], {type: 'application/json'});
  const a = document.createElement('a'); a.href = URL.createObjectURL(blob); a.download = `${D.tag}-run-${n}.json`; a.click();
  if (!record.complete || record.errors.length || got !== D.expected.length) {
    $('status').textContent = `Measurement ${n} incomplete: ${got} of ${D.expected.length} reports. ${record.errors.join('; ')}. Try again.`;
    $('status').className = 'big warn';
  } else {
    runs = n; show(record, n);
    $('status').textContent = `Measurement ${n} complete and saved as ${D.tag}-run-${n}.json.` + (n < 3 ? ' Run it again.' : ' Three done: send the files.');
    $('status').className = 'big ok';
  }
  $('run').textContent = `2. Run measurement ${runs + 1}`; $('run').disabled = false;
};
function label(c) {
  if (c.setting) return c.setting.option ? `${c.setting.label} ${c.setting.option}` : `${c.setting.label} ${(100 * c.setting.value / 0x7fffffff).toFixed(1)}%`;
  return c.combined ? 'combined (heaviest of each)' : 'midpoint (stock)';
}
function show(rec, n) {
  const frames = rec.frames.filter(f => f.command === 0x94);
  const rows = {};
  D.expected.forEach((c, i) => {
    if (c.source !== 'sdk') return;
    const p = frames[i].payload_hex, m = c.metric ?? 5, at = m * 12;
    const avg = parseInt(p.substr(at + 4, 4), 16);  // >HHH: maximum, average, accumulated
    (rows[c.name] ||= []).push([label(c), 100 * avg / 65535]);
  });
  let html = `<h3>Measurement ${n}</h3>`;
  for (const [name, list] of Object.entries(rows)) {
    const heaviest = list.reduce((a, b) => b[1] > a[1] ? b : a);
    html += `<p class="big ${heaviest[1] > 3.5 ? 'warn' : 'ok'}">${name}: heaviest ${heaviest[1].toFixed(3)}% at ${heaviest[0]} ` +
      `(recommended at most 3.5%)</p><table><tr><th>Setting</th><th>Block budget</th></tr>` +
      list.map(([l, v]) => `<tr><td>${l}</td><td class="n">${v.toFixed(3)}%</td></tr>`).join('') + '</table>';
  }
  $('results').insertAdjacentHTML('beforeend', html);
}
(async () => { const t = new TextEncoder().encode(document.querySelector('script').textContent);
  D.collector = hex(new Uint8Array(await crypto.subtle.digest('SHA-256', t))); })();
</script></body></html>
'''
out.write_text(PAGE.replace('@DATA@', data).replace('@TAG@', tag), encoding='utf-8')
print('Wrote', out, '-', len(expected), 'reports expected for', ', '.join(machines))
