//Exile_AdminGetVicClassname
	private["_displayName","_out","_cfgVehicles"]; 

	_displayName = _this;
	_out = "displayName not found";
	_cfgVehicles = configFile >> "cfgVehicles";

	for "_i" from 0 to count (_cfgVehicles) do { //fix for access error
		if ((isClass (_cfgVehicles select _i)) && {_displayName == getText(_cfgVehicles select _i >> "displayName")}) exitWith { 
			_out = configName (_cfgVehicles select _i); 
		}; 
	}; 
	_out