#!/bin/bash
# Medieval Wind CPU test for macOS (Apple silicon). Double-click to run.
#
# Run it twice:
#   1st run: downloads the Open-XY SDK (pinned commit) and Medieval Wind, fetches
#            the SDK's pinned Blackfin tools, asks for your stock OP-XY OS 1.2.1
#            os.ldr, builds a profiling test firmware holding Medieval Wind alone,
#            and shows how to install it.
#   2nd run (after installing and restarting the OP-XY): runs the SDK's CPU
#            benchmark three times over USB MIDI and reports Medieval Wind.
#
# Everything lives in ~/Library/Application Support/OPXY-SDK/. Your firmware
# stays in its private/ folder and is never uploaded anywhere. This script
# never writes to the OP-XY: you copy the files and write the OS yourself.
# It follows the SDK's docs/build.md and docs/profiling.md.

SDK_REPO="https://github.com/etcetc000/open-xy"
SDK_COMMIT="8d4bb49de8a2d72453f0ca247fecbb0aeb0daf27"
MACHINE_REPO="https://github.com/SammiBabe666/MedievalWind-for-open-XY-"
STOCK_SHA256="60358afdaa9b58ed40411602f6d5d4e1e3e02553ff2da7e25038e71dd002b52f"
RUNS=3

HOME_DIR="$HOME/Library/Application Support/OPXY-SDK"
SRC="$HOME_DIR/src"
PRIVATE="$HOME_DIR/private"
SDK="$SRC/open-xy"
MACHINE="$SRC/MedievalWind-for-open-XY-"
VENV="$HOME_DIR/venv-medievalwind-cpu"
STOCK="$PRIVATE/stock-1.2.1/os.ldr"
PACKAGE="$PRIVATE/medievalwind-cpu-build"
LOG="$HOME_DIR/medievalwind-cpu-test.log"
TITLE="Medieval Wind CPU test"

mkdir -p "$SRC" "$PRIVATE/stock-1.2.1"
exec > >(tee -a "$LOG") 2>&1
echo
echo "=== $TITLE: $(date) ==="

# ---------------------------------------------------------------- dialogs
say_box() {  # message [buttons...]: prints the button pressed
    local msg="$1"; shift
    local buttons='{"OK"}' default='"OK"'
    if [ $# -gt 0 ]; then
        buttons="{$(printf '"%s",' "$@" | sed 's/,$//')}"
        default="\"${!#}\""
    fi
    osascript - "$msg" <<EOF 2>/dev/null
on run argv
    set r to display dialog (item 1 of argv) buttons $buttons default button $default with title "$TITLE"
    return button returned of r
end run
EOF
}
fail() {
    echo "FAILED: $1"
    say_box "Stopped: $1

Details are in the log:
$LOG" "OK" >/dev/null
    open -a TextEdit "$LOG" 2>/dev/null
    exit 1
}
step() { echo; echo "--- $1"; }

# ---------------------------------------------------------------- checks
[ "$(uname -m)" = "arm64" ] || fail "This needs an Apple-silicon Mac (M1 or later): the SDK's Blackfin tools are only published for Apple silicon and Windows."

PY=""
for candidate in python3.13 python3.12 python3.11 \
    /Library/Frameworks/Python.framework/Versions/3.13/bin/python3 \
    /Library/Frameworks/Python.framework/Versions/3.12/bin/python3 \
    /Library/Frameworks/Python.framework/Versions/3.11/bin/python3 \
    /opt/homebrew/bin/python3 python3; do
    if command -v "$candidate" >/dev/null 2>&1 &&
       "$candidate" -c 'import sys; sys.exit(0 if sys.version_info >= (3, 11) else 1)' 2>/dev/null; then
        PY="$(command -v "$candidate")"; break
    fi
done
if [ -z "$PY" ]; then
    say_box "This needs Python 3.11 or newer. The python.org download page will open: install the macOS package, then double-click this file again." "OK" >/dev/null
    open "https://www.python.org/downloads/macos/"
    exit 1
fi
echo "Python: $PY ($("$PY" --version))"

if ! xcode-select -p >/dev/null 2>&1; then
    say_box "macOS needs its Command Line Tools (for git). An installer will appear: install them, then double-click this file again." "OK" >/dev/null
    xcode-select --install
    exit 1
fi

# ---------------------------------------------------------------- which phase
PHASE="build"
if [ -f "$PACKAGE/manifest.json" ]; then
    choice=$(say_box "A Medieval Wind test firmware is already built:
$PACKAGE

Have you installed it on your OP-XY and restarted it?" "Cancel" "Build it again" "Measure now")
    case "$choice" in
        "Measure now") PHASE="measure" ;;
        "Build it again") PHASE="build" ;;
        *) exit 0 ;;
    esac
fi

# ================================================================= build
if [ "$PHASE" = "build" ]; then
    go=$(say_box "This builds a test firmware for your OP-XY with Medieval Wind and CPU profiling switched on.

Other custom machines you use are not in the test firmware: while it is installed, don't open or save projects that use them. Before installing, keep a copy of your current /os.ldr and /content/op1_factory.json from the device: copying them back is how you return to your usual firmware.

It downloads about 150 MB and takes a few minutes." "Cancel" "Continue")
    [ "$go" = "Continue" ] || exit 0

    step "Open-XY SDK at $SDK_COMMIT"
    if [ ! -d "$SDK/.git" ]; then
        git clone "$SDK_REPO" "$SDK" || fail "Could not download the Open-XY SDK."
    fi
    git -C "$SDK" fetch --quiet origin || fail "Could not update the Open-XY SDK."
    git -C "$SDK" checkout --quiet --force "$SDK_COMMIT" || fail "Could not check out the pinned SDK commit."

    step "Medieval Wind (latest main)"
    if [ ! -d "$MACHINE/.git" ]; then
        git clone "$MACHINE_REPO" "$MACHINE" || fail "Could not download Medieval Wind."
    fi
    git -C "$MACHINE" fetch --quiet origin main || fail "Could not update Medieval Wind."
    git -C "$MACHINE" checkout --quiet --force main && git -C "$MACHINE" reset --quiet --hard origin/main ||
        fail "Could not update Medieval Wind."
    git -C "$MACHINE" clean -fdxq
    echo "Medieval Wind commit: $(git -C "$MACHINE" rev-parse HEAD)"

    step "Python environment"
    if [ ! -x "$VENV/bin/python" ]; then
        "$PY" -m venv "$VENV" || fail "Could not create a Python environment."
    fi
    "$VENV/bin/python" -m pip install --quiet --upgrade pip python-rtmidi certifi ||
        fail "Could not install python-rtmidi (the USB MIDI library the measurement uses)."
    # python.org's Python on macOS has no certificates until its own installer step.
    export SSL_CERT_FILE="$("$VENV/bin/python" -c 'import certifi; print(certifi.where())')"

    step "Pinned Blackfin tools"
    (cd "$SDK" && "$VENV/bin/python" sdk.py toolchain fetch) || fail "Could not fetch the SDK's Blackfin tools."

    step "Stock OS"
    if [ -f "$STOCK" ] && [ "$(shasum -a 256 "$STOCK" | cut -d' ' -f1)" = "$STOCK_SHA256" ]; then
        echo "Using $STOCK"
    else
        picked=$(osascript -e 'POSIX path of (choose file with prompt "Choose your OP-XY OS 1.2.1 file, os.ldr (the decrypted stock OS, not a .tfw)")' 2>/dev/null) ||
            exit 0
        sum=$(shasum -a 256 "$picked" | cut -d' ' -f1)
        if [ "$sum" != "$STOCK_SHA256" ]; then
            fail "That file is not the stock OP-XY OS 1.2.1 (its fingerprint differs). Use the os.ldr copied from the device's /upgrade/firmware/blackfin/bin/ folder."
        fi
        cp "$picked" "$STOCK" && chmod 0444 "$STOCK"
        echo "Copied to $STOCK"
    fi

    step "Building the profiling firmware"
    rm -rf "$PACKAGE"
    (cd "$SDK" && "$VENV/bin/python" sdk.py build --machine "$MACHINE" --profiling on \
        --stock-os "$STOCK" --out "$PACKAGE") || fail "The firmware build failed."
    [ -f "$PACKAGE/candidate/os.ldr" ] || fail "The build finished without candidate/os.ldr."

    open "$PACKAGE/candidate"
    say_box "Built. The folder with the files to install is now open in Finder.

To install (as in the SDK's docs/build.md, step 5):
1. Hold COM while switching the OP-XY on (te-boot), press track 3 (dev menu), then track 2 (mtp file transfer, mac).
2. Open the OP-XY in OpenMTP (quit Field Kit first).
3. Copy, replacing the existing files:
   os.ldr  ->  the device's top folder  /os.ldr
   content/op1_factory.json  ->  /content/
   content/display/medievalwind.svg  ->  /content/display/
4. Press track 2 (exit), then track 5 (write os to boot partition). When it says firmware written ok, switch it off and on.

Then connect the OP-XY by USB, let it start normally, and double-click this file again to measure." "OK" >/dev/null
    exit 0
fi

# ================================================================= measure
go=$(say_box "Before measuring:
- The OP-XY is running the test firmware, started normally (not in file transfer mode), connected by USB.
- Playback is stopped and your work is saved. The test plays its own notes and changes temporary settings: do not touch the OP-XY while it runs, and do not save afterwards.
- Quit apps that use the OP-XY's MIDI (DAWs, Field Kit, the Open-XY builder tab). Leave USB audio off.

It runs $RUNS times, a few minutes each." "Cancel" "Start")
[ "$go" = "Start" ] || exit 0

stamp=$(date +%Y%m%d-%H%M%S)
captures=()
for n in $(seq 1 "$RUNS"); do
    step "Measurement $n of $RUNS"
    out="$PRIVATE/medievalwind-cpu-run-$stamp-$n"
    (cd "$SDK" && "$VENV/bin/python" sdk.py profile benchmark --package "$PACKAGE" --installed --greet --out "$out") ||
        fail "Measurement $n did not complete. Check the USB cable, that the OP-XY started the test firmware normally, and that no other app holds its MIDI port."
    captures+=(--capture "$out/capture.json")
done

step "Reports"
cat > "$HOME_DIR/cpu_summary.py" <<'PYEOF'
import json, sys
cpu = json.load(open(sys.argv[1]))['cpu']
name = 'Medieval Wind'
worst = cpu.get('worst_setting', {}).get('label', '?')
verdict = 'within' if cpu['block_percent'] <= 3.5 else 'ABOVE'
print('%s: %.3f%% at its heaviest setting (%s), %s the recommended 3.5%%. Midpoint run %.3f%%.'
      % (name, cpu['block_percent'], worst, verdict, cpu.get('midpoint_percent', float('nan'))))
PYEOF
summary=""
reports=""
for machine in medievalwind; do
    report="$PRIVATE/$machine-cpu-report-$stamp"
    (cd "$SDK" && "$VENV/bin/python" sdk.py profile report --package "$PACKAGE" --machine "$machine" \
        "${captures[@]}" --out "$report") || fail "The $machine report could not be made from the measurements."
    line=$("$VENV/bin/python" "$HOME_DIR/cpu_summary.py" "$report/catalog-cpu.json" "$machine")
    summary="$summary$line
"
    reports="$reports$report
"
    open "$report/report.md" 2>/dev/null
done
echo "$summary"
say_box "$summary

The reports are open (report.md) and saved in:
$reports
Send report.md and catalog-cpu.json back to finish the audit. Keep the capture folders private (they can include your device's serial number).

Afterwards, restart the OP-XY without saving, then return to your usual firmware: copy your saved os.ldr and op1_factory.json back the same way and write the OS again (or rebuild it in the Open-XY builder)." "OK" >/dev/null
