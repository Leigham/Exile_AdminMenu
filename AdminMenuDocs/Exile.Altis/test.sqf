disableSerialization;
waituntil {!(IsNull (findDisplay 46))};
OpenSpawnMenu = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 60) then {execVM 'MissionAdminFunctions\ShowSpawnDialog.sqf'}"];
systemchat "Press F2 to Open The Menu";