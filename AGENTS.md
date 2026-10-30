# Machine development

This repository holds Medieval Wind (`medievalwind`), a modelled shawm that turns
into a crumhorn. The machine is at the repository root.
Keep the `medievalwind` ID, the parameter order (reed, bore, bell, breath, bend, crum,
hall, echo) and their mappings: saved sounds depend on them. After changing presets in
definition.json, rerun `python generators/presets.py .` (and keep `tests/presets.cpp`'s
table in step); after changing artwork, rerun `python generators/panel.py .`. Any change
to the sound changes `tests/render.cpp`'s hash: record the new one deliberately.
Read README.md and AUDIT.md and use the [Open-XY SDK](https://github.com/etcetc000/open-xy)
at the commit pinned in `.github/workflows/machine.yml` (`8d4bb49`, the one Fujara's
hardware kit uses), normally checked out beside this repository as `../open-xy`.
Adjust that path if the user already has the SDK elsewhere. Do not vendor the SDK.

1. Read the [machine API](https://github.com/etcetc000/open-xy/blob/staging/docs/api.md),
   follow the [UX conventions](https://github.com/etcetc000/open-xy/blob/staging/docs/ux.md)
   for controls, pages, screens and motion, and read the relevant [core machines](https://github.com/etcetc000/open-xy-core-machines):
   Macro Osc for two-page synths, Karplus or 2op FM for four-control synths,
   Ring Mod or Ping Pong for effects, Timestretch
   for sample engines. They are the worked examples; this repository holds the
   user's implementation. Use the actual parameter count: four controls keep
   the stock header. For five to eight controls, keep the generated shared
   `opxy/page_header.hpp` header and its SVG bindings: fixed rows, lowercase
   titles, active-row emphasis, any encoder press switches pages. Repeat the
   same saved parameter in columns without alternates; never invent filler
   parameters. Format captions in real units and keep artwork below y=38.
   Preserve licences and attribution when reusing code.
2. Implement through public `<opxy/...>` headers. Keep code, metadata, artwork
   and sound tests here. Do not edit the SDK to make the machine work; explain
   missing interfaces and propose a separate SDK PR against `staging`.
   Contributor code has no assembly, raw firmware addresses, OS headers or
   platform conditionals. Audio callbacks must not allocate, block, log, do I/O
   or call graphics.
3. Run `python ../open-xy/sdk.py test --machine .` and extend `tests/` for the
   machine's promised sound and behavior. Offer browser audition where supported.
   Use the host CPU estimate to guide iteration; it is not a hardware measurement.
4. After local testing and audition, propose hardware validation. Follow the SDK's
   [build guide](https://github.com/etcetc000/open-xy/blob/staging/docs/build.md)
   and [hardware profiling guide](https://github.com/etcetc000/open-xy/blob/staging/docs/profiling.md).
   Prepare a profiling-enabled build from committed source, request a device test
   if not already authorized, and wait for confirmation of installation/reboot.
   Collect a complete run (hardware profiling's "Collect a run"), generate the
   report and explain its scope.
   Never invent a CPU number from host checks. If hardware is unavailable, report
   that validation remains pending; a maintainer can run the batch.
5. If publication is requested, follow
   [catalog submission](https://github.com/etcetc000/open-xy/blob/staging/docs/catalog.md#submit-a-machine).
   New or changed draft/published entries require the hardware `cpu` record for
   the exact pinned commit. A new machine revision needs a new measurement.
   The catalog PR targets `staging` and changes only `catalog/machines.json`.

Keep generated outputs outside this repository. Firmware, stock content and
firmware-containing packages must stay outside every checkout, even ignored
folders. Device operations require an explicit user instruction; building and
testing locally do not authorize installing firmware or running diagnostics.
