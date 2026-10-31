// Generated ownership and control metadata for one collection's synths and FX.
#include "synth_controls.hpp"
#include "lfo.hpp"
extern "C" {
int medievalwind_record_ready() __asm__("medievalwind_record_ready");
extern const char medievalwind_engine_id[] __asm__("medievalwind_engine_id");
int medievalwind_ready() __asm__("medievalwind_ready");
}
using opxy::platform::SynthControls;
using opxy::platform::control_tenths;
using opxy::platform::control_ratio;
using opxy::platform::control_division;
using opxy::platform::control_label;

static bool medievalwind_format(opxy::u32 slot, opxy::i32 value, char* text) {
    switch (slot) {
    case 0:
        control_tenths(text, value < 0 ? 0 : ((static_cast<opxy::u32>(value) >> 10) * 1000 + (1u << 20)) >> 21, "");
        return true;
    case 1:
        control_tenths(text, value < 0 ? 0 : ((static_cast<opxy::u32>(value) >> 10) * 1000 + (1u << 20)) >> 21, "");
        return true;
    case 2:
        control_tenths(text, value < 0 ? 0 : ((static_cast<opxy::u32>(value) >> 10) * 1000 + (1u << 20)) >> 21, "");
        return true;
    case 3:
        control_tenths(text, value < 0 ? 0 : ((static_cast<opxy::u32>(value) >> 10) * 1000 + (1u << 20)) >> 21, "");
        return true;
    case 4:
        control_tenths(text, value < 0 ? 0 : ((static_cast<opxy::u32>(value) >> 10) * 1000 + (1u << 20)) >> 21, "");
        return true;
    case 5:
        control_tenths(text, value < 0 ? 0 : ((static_cast<opxy::u32>(value) >> 10) * 1000 + (1u << 20)) >> 21, "");
        return true;
    case 6:
        control_tenths(text, value < 0 ? 0 : ((static_cast<opxy::u32>(value) >> 10) * 1000 + (1u << 20)) >> 21, "");
        return true;
    case 7:
        control_tenths(text, value < 0 ? 0 : ((static_cast<opxy::u32>(value) >> 10) * 1000 + (1u << 20)) >> 21, "");
        return true;
    default: return false;
    }
}

const SynthControls sdk_synth_controls[] = {
    {medievalwind_engine_id, medievalwind_ready, {4, 5, 6, 7, 0, 1, 2, 3}, 255, {0, 0, 0, 0, 0, 0, 0, 0}, medievalwind_format, false, true},
    {nullptr, nullptr, {0, 1, 2, 3, 4, 5, 6, 7}, 0, {0, 0, 0, 0, 0, 0, 0, 0}, nullptr, false, false}
};
// The terminating entry keeps the array nonempty for a sample-only collection.
const opxy::u32 sdk_synth_control_count = sizeof(sdk_synth_controls) / sizeof(sdk_synth_controls[0]) - 1;

const opxy::platform::LfoMachine sdk_lfo_machines[] = {
    {medievalwind_engine_id, medievalwind_record_ready, 8, {0, 1, 2, 3, 0, 1, 2, 3}},
    {nullptr, nullptr, 0, {}}
};
const opxy::u32 sdk_lfo_machine_count = sizeof(sdk_lfo_machines) / sizeof(sdk_lfo_machines[0]) - 1;
