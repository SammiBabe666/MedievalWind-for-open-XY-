# Medieval Wind CPU test for Mac (no typing)

`Medieval Wind CPU Test.command` builds a profiling test firmware for your
OP-XY holding Medieval Wind, then measures its CPU cost on the device: the
SDK's official measurement (docs/profiling.md), with dialogs instead of typed
commands. A Terminal window shows progress while it runs; you never type in it.
It works like Fujara's kit.

Needs an Apple-silicon Mac, Python 3.11 or newer from python.org, your stock
OP-XY OS 1.2.1 `os.ldr`, a USB cable and OpenMTP for copying files.

## Get it

Download [MedievalWind-CPU-Test-mac.zip](MedievalWind-CPU-Test-mac.zip) and
double-click it to unzip. The first time, macOS blocks scripts from the
internet: right-click the file, choose **Open**, then **Open** again. On macOS
15 or later, if there is no Open button, choose **Done**, then open **System
Settings → Privacy & Security** and click **Open Anyway** next to the file's name.

## Run it

0. **Back up first.** In file transfer mode, copy your current `/os.ldr` and
   `/content/op1_factory.json` from the OP-XY to your Mac. Copying them back
   (and writing the OS) is how you return to your usual firmware.
1. **First run: build.** It downloads the Open-XY SDK (pinned commit `8d4bb49`)
   and Medieval Wind, fetches the SDK's Blackfin tools, asks you to pick your
   `os.ldr` (it checks it is the exact stock 1.2.1 file) and builds the test
   firmware. Then it opens the folder of files to install and shows the steps:
   te-boot (hold COM while switching on) → track 3 dev menu → track 2 mtp file
   transfer (mac) → copy with OpenMTP → track 2 exit → track 5 write os → power
   cycle.
2. **Second run: measure.** With the OP-XY started normally on the test
   firmware and connected by USB, double-click again and choose **Measure now**.
   It runs the benchmark three times (a few minutes each; don't touch the
   OP-XY) and shows the result. The report opens as `report.md`.
3. **Afterwards**, restart the OP-XY without saving and put your backup
   `os.ldr` and `op1_factory.json` back the same way (then write the OS), or
   rebuild your usual firmware in the Open-XY builder. Other custom machines
   (Daath, Fujara) are not in the test firmware: don't open projects that use
   them while it is installed.

Files go in `~/Library/Application Support/OPXY-SDK/`: the SDK and Medieval
Wind in `src/`, your OS, the build and the measurements in `private/`. Nothing
is uploaded. Send back `report.md` and `catalog-cpu.json` to complete the
audit; keep the capture folders private (they can contain your device's serial
number). A log is kept at
`~/Library/Application Support/OPXY-SDK/medievalwind-cpu-test.log`.

The result is a percentage of the stock 580,352-cycle audio block for one
voice at its heaviest setting. At or below 3.5% is the SDK's recommendation.
It does not by itself prove a busy project won't drop audio: also play a
dense project with several tracks of Medieval Wind and listen.
