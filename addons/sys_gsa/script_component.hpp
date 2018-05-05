#define COMPONENT sys_gsa
#define COMPONENT_BEAUTIFIED Ground Spike Antenna
#include "\idi\acre\addons\main\script_mod.hpp"

#ifdef DEBUG_ENABLED_SYS_GSA
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_SYS_GSA
    #define DEBUG_SETTINGS DEBUG_SETTINGS_SYS_GSA
#endif

#define ANTENNA_MAXDISTANCE 10.0
#define MAST_Z_OFFSET 3.3

#include "\idi\acre\addons\main\script_macros.hpp"
#include "\idi\acre\addons\sys_components\script_acre_component_defines.hpp"
