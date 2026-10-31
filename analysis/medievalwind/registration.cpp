// Generated: medievalwind's stock identity for the SDK's checked registration.
#include "registration.hpp"
extern "C" {
extern const char medievalwind_factory[] __asm__("medievalwind_factory");
extern const char medievalwind_parameter_name[] __asm__("medievalwind_parameter_name");
extern const char medievalwind_name[] __asm__("medievalwind_name");
extern const char medievalwind_engine_id[] __asm__("medievalwind_engine_id");
extern const char medievalwind_page_id[] __asm__("medievalwind_page_id");
extern char medievalwind_screen_state[] __asm__("medievalwind_screen_state");
extern const char medievalwind_screen_vtable[] __asm__("medievalwind_screen_vtable");
extern const char medievalwind_screen_asset[] __asm__("medievalwind_screen_asset");
char* medievalwind_screen_ctor(char*, opxy::u32) __asm__("medievalwind_screen_ctor");
int medievalwind_screen_register() __asm__("medievalwind_screen_register");
int medievalwind_register() __asm__("medievalwind_register");
int medievalwind_record_ready() __asm__("medievalwind_record_ready");
int medievalwind_name_matches(const void* string) __asm__("medievalwind_name_matches");
int medievalwind_ready() __asm__("medievalwind_ready");
}
namespace {
const opxy::platform::Record record = {medievalwind_factory, medievalwind_parameter_name, medievalwind_name, medievalwind_engine_id, medievalwind_page_id, 0};
const opxy::platform::Screen screen = {medievalwind_screen_state, 856, medievalwind_screen_vtable, medievalwind_screen_asset, medievalwind_screen_ctor};
}
int medievalwind_screen_register() { return sdk_register_screen(&record, &screen); }
int medievalwind_register() { return sdk_register_engine(&record); }
int medievalwind_record_ready() { return sdk_engine_ready(&record, nullptr); }
int medievalwind_name_matches(const void* string) { return sdk_name_matches(&record, string); }
int medievalwind_ready() { return sdk_engine_ready(&record, &screen); }
