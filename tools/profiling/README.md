# CPU test builds without the pinned tools at home

How the Medieval Wind CPU test OS and its Chrome test page are made when the
computer holding the stock OS cannot run the SDK's pinned Blackfin tools
(for example Linux, which has no published toolchain archive). The same scripts
as Fujara's.

1. **Compile in CI.** Run the *Profiling module* workflow
   ([.github/workflows/profiling-module.yml](../../.github/workflows/profiling-module.yml)).
   On Windows, with the SDK's hash-pinned tools, it compiles Medieval Wind with
   profiling and the control sweep on ([compile_module.py](compile_module.py),
   the first half of `sdk.py build`), and force-pushes the module to the
   `profiling-module` branch. That is compiled code only: no firmware.
2. **Patch at home.** [finish_package.py](finish_package.py) checks that every
   machine and SDK source hash equals the compiled module's, then completes
   `sdk.py build` with the SDK's own code (`prepare_assets`, `assemble`: the
   reviewed edits only, the stock OS reconstructed byte for byte from the
   result). Keep the package private.

   ```sh
   git fetch origin profiling-module && git worktree add --detach ../module origin/profiling-module
   python tools/profiling/finish_package.py ../open-xy ../module <private>/stock-1.2.1/os.ldr <private>/medievalwind-cpu-NNN .
   ```

3. **Measure in Chrome.** [make_test_page.py](make_test_page.py) writes one HTML
   file bound to that package: it speaks the SDK collector's protocol (greet,
   identity, benchmark) over Web MIDI, refuses a device not in normal mode on
   OS 1.2.1, shows the results and downloads each run as a capture.

   ```sh
   python tools/profiling/make_test_page.py ../open-xy <private>/medievalwind-cpu-NNN "Medieval Wind CPU test.html" medievalwind-cpu-TAG
   ```

4. **Report.** `python ../open-xy/sdk.py profile report --package <package> --machine medievalwind --capture run-1.json --capture run-2.json --capture run-3.json --out <fresh folder>`

The package has no `verification.json` (the independent rebuild needs the
pinned tools). Test-page captures name their collector as the browser page.
