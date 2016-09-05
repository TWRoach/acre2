//fnc_getAllAvailableConnectors.sqf
#include "script_component.hpp"

params ["_componentId"];

private _componentData = HASH_GET(acre_sys_data_radioData,_componentId);
private _return = nil;
if(!isNil "_componentData") then {
	private _connectorData = HASH_GET(_componentData, "acre_radioConnectionData");
	if(!isNil "_connectorData") then {
		_return = [];
		private _componentClass = configFile >> "CfgAcreComponents" >> (getText(configFile >> "CfgWeapons" >> _componentId >> "acre_baseClass"));
		private _connectors = getArray(_componentClass >> "connectors");
		{
			if(_forEachIndex < (count _connectorData)) then {
				if(isNil "_x") then {
					PUSH(_return, _forEachIndex);
				};
			} else {
				PUSH(_return, _forEachIndex);
			};
		} forEach _connectors;
	};
};
_return;
