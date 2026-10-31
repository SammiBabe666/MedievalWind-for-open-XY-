// Generated: this collection's machines for project companions, sorted by ID.
#include "project_companion.hpp"
extern "C" {
extern const char medievalwind_engine_id[] __asm__("medievalwind_engine_id");
extern const char medievalwind_page_id[] __asm__("medievalwind_page_id");
}

const opxy::platform::CompanionMachine sdk_companion_machines[] = {
    {"medievalwind", medievalwind_engine_id, medievalwind_page_id, false},
    {nullptr, nullptr, nullptr, false}
};
