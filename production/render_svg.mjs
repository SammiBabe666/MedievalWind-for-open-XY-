// Renders an SVG file to PNG with Chromium (Playwright), at its own size.
//   node production/render_svg.mjs <in.svg> <out.png>
import { readFileSync } from 'node:fs';
import { createRequire } from 'node:module';
const require = createRequire(import.meta.url);
const { chromium } = require('playwright');
const [input, output] = process.argv.slice(2);
const svg = readFileSync(input, 'utf8');
const [, width, height] = svg.match(/width="(\d+)" height="(\d+)"/).map(Number);
const browser = await chromium.launch();
const page = await browser.newPage({ viewport: { width, height }, deviceScaleFactor: 1 });
await page.setContent(`<html><body style="margin:0;background:#000">${svg}</body></html>`);
await page.screenshot({ path: output, clip: { x: 0, y: 0, width, height } });
await browser.close();
