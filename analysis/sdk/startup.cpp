// Generated startup for one collection, in ledger order. startup_exit.s calls
// the two initializer continuations; the menu calls the catalog adapter in
// place of stock catalog insertion; the compositor asks which pages are ours.
// In a browser kit, an unselected machine's callbacks resolve to kit_absent,
// which declines.
#include <opxy/types.hpp>

using opxy::u32;

extern "C" {
void sdk_startup_synth() __asm__("sdk_startup_synth");
void sdk_startup_screen() __asm__("sdk_startup_screen");
u32 extensions_catalog_checked(void*, const void*, u32) __asm__("extensions_catalog_checked");
int kit_absent() __asm__("kit_absent");
u32 stock_catalog_insert(void*, const void*, u32) __asm__("stock_catalog_insert");
u32 stock_gui_role() __asm__("stock_gui_role");
int sdk_screen_owned(u32) __asm__("sdk_screen_owned");
int sdk_engine_installed(const void*) __asm__("sdk_engine_installed");
int sdk_stock_engine_known(const void*) __asm__("sdk_stock_engine_known");
int medievalwind_register() __asm__("medievalwind_register");
int medievalwind_name_matches(const void*) __asm__("medievalwind_name_matches");
int medievalwind_ready() __asm__("medievalwind_ready");
extern const char medievalwind_engine_id[] __asm__("medievalwind_engine_id");
int medievalwind_screen_register() __asm__("medievalwind_screen_register");
extern const char medievalwind_page_id[] __asm__("medievalwind_page_id");
}

namespace {
typedef __UINTPTR_TYPE__ Address;
u32 value(const char* symbol) { return static_cast<u32>(reinterpret_cast<Address>(symbol)); }
}

int kit_absent() { return 0; }

// Effects register on both roles, like stock FX initialisation; engines
// register here on the audio role only.
void sdk_startup_synth() {

    if (stock_gui_role()) return;
    medievalwind_register();
}

// On the GUI role an engine with its own page registers only after its screen
// is in place; a failed page skips only that engine.
void sdk_startup_screen() {
    if (medievalwind_screen_register() == 1) medievalwind_register();
}

// The stock catalog insertion ABI. An own name is admitted only with its
// expected resolved ID while its machine is ready; every other name reaches
// stock unchanged, except stock's missing-engine ID.
u32 extensions_catalog_checked(void* catalog, const void* name, u32 id) {
    if (id == 33) return 0;
    if (medievalwind_name_matches(name))
        return id == value(medievalwind_engine_id) && medievalwind_ready() == 1 ? stock_catalog_insert(catalog, name, id) : 0;
    return stock_catalog_insert(catalog, name, id);
}

// 1 when page is the own screen of a machine that is ready (screen_order.cpp.in).
int sdk_screen_owned(u32 page) {
    if (page == value(medievalwind_page_id)) return medievalwind_ready() == 1;
    return 0;
}

// 1 when this build installs the engine named (presets.cpp): a stock engine, or
// one of this build's machines by name, since the preset scan can run before
// they register. An unselected machine's name check is kit_absent.
int sdk_engine_installed(const void* name) {
    if (sdk_stock_engine_known(name)) return 1;
    if (medievalwind_name_matches(name)) return 1;
    return 0;
}
