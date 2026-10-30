// Captures Medieval Wind's real screen, frame by frame, for the tour video and
// the screenshots. It opens the SDK's preview workbench (python
// tools/serve_harness.py), and in that page steps the machine's own display
// C++ (compiled to WebAssembly by sdk.py preview: PreviewDisplay) and applies
// each frame with the SDK's browser renderer (SvgDisplay) and screen template
// (renderScreen): the same path the workbench uses, but driven by a fixed
// timeline instead of the clock, so every frame lines up with the audio.
// Adapted from Fujara's production/capture_screens.mjs (same author, MIT).
//
//   node production/capture_screens.mjs <timeline.json> <out-dir> [port] [scale]
//
// timeline.json: {"fps": 30, "frames": [{"c": [eight controls 0..1], "page": 0|1, "on": n, "held": h, "off": f}, ...]}
// Writes <out-dir>/screen-<k>.png for each distinct screen and <out-dir>/index.json
// mapping every frame to its image. Idle frames repeat the previous image.
import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import { createRequire } from 'node:module';
const require = createRequire(import.meta.url);
const { chromium } = require('playwright');

const [timelinePath, outDir, port = '8937', scale = '2.5'] = process.argv.slice(2);
const timeline = JSON.parse(readFileSync(timelinePath, 'utf8'));
mkdirSync(outDir, { recursive: true });
const browser = await chromium.launch();
const page = await browser.newPage({ viewport: { width: 480, height: 220 }, deviceScaleFactor: Number(scale) });
await page.goto(`http://127.0.0.1:${port}/`);
await page.waitForTimeout(800);
const svgs = await page.evaluate(async ({ frames, fps }) => {
  const { PreviewDisplay, SvgDisplay } = await import('/sdk/browser/display.mjs');
  const { createControls, shownControls } = await import('/sdk/browser/controls.mjs');
  const { renderScreen } = await import('/harness/screen.mjs');
  const manifest = await (await fetch('/preview/manifest.json')).json();
  const module = await WebAssembly.compile(await (await fetch('/preview/engine.wasm')).arrayBuffer());
  const artwork = await (await fetch('/preview/panel.svg')).text();
  const display = new PreviewDisplay(module);
  const scene = new SvgDisplay(artwork, manifest.graphics);
  const controls = createControls(structuredClone(manifest.definition));
  const ids = manifest.definition.parameters.map(p => p.id);
  const elapsed = Math.round(1024 / fps);  // Q10 seconds per frame
  const out = [];
  for (const f of frames) {
    const words = f.c.map(v => Math.round(v * 2147483647));
    const shown = f.page ? [4, 5, 6, 7] : [0, 1, 2, 3];
    const input = shownControls(words, shown);
    scene.apply(display.tick(input, elapsed, f.on >>> 0, 0, false, { held_notes: f.held, note_off_serial: f.off >>> 0 }));
    const values = Object.fromEntries(ids.map((id, i) => [id, f.c[i]]));
    out.push(renderScreen(values, 'routing', null, scene.svg(), controls, shown, scene.header));
  }
  return out;
}, timeline);
const raster = await browser.newPage({ viewport: { width: 480, height: 220 }, deviceScaleFactor: Number(scale) });
const index = [], seen = new Map();
for (const svg of svgs) {
  if (!seen.has(svg)) {
    const k = seen.size;
    seen.set(svg, k);
    await raster.setContent(`<html><body style="margin:0;background:#000">${svg}</body></html>`);
    await raster.screenshot({ path: `${outDir}/screen-${k}.png`, clip: { x: 0, y: 0, width: 480, height: 220 } });
  }
  index.push(seen.get(svg));
}
writeFileSync(`${outDir}/index.json`, JSON.stringify({ frames: index, distinct: seen.size }));
console.log(`${svgs.length} frames, ${seen.size} distinct screens`);
await browser.close();
