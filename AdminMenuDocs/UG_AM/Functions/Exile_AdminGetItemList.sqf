//Getting Items for all l

private ["_Classname","_Display","_Displayname","_ObjectListBox","_ObjectType","_ObjectTypeName","_ObjectTypeText","_bpList","_bplist","_cfg","_className","_classname","_i","_scope","_selection","_this","_vehClass","_x"];
_display = findDisplay 7450;
_ObjectListBox = _display displayCtrl 7455;
_ObjectType = _this select 1;
_ObjectTypeText = _display displayCtrl 7454;
_selection = lbCurSel _ObjectTypeText; if(_selection < 0) exitWith{};
_ObjectTypeName = lbtext [7454,_selection];
UG_PICK_BP = false;
UG_PICK_HG = false;
UG_PICK_EC = false;
diag_log format ["%1 %2 %3 %4 %5 %6",_Display,_ObjectListBox,_ObjectType,_ObjectTypeText,_ObjectTypeName,_selection];
hint format ["Loading Data for %1", _ObjectTypeName];


if (_ObjectTypeName == "Backpacks") then{Diag_log "Backpacks";

_cfg = configfile >> "CfgVehicles"; // define the initial path

_bpList = [];// define an array



for "_i" from 0 to count _cfg - 1 do { // iterate through cfgVehicles 

	if (isClass (_cfg select _i)) then {// if the item is a class then ...

		_className = configName (_cfg select _i); // Get the className of the item

		_scope = getNumber (_cfg >> _className >> "scope"); // Get the scope of the item, used to sort out base items

		_vehClass = getText (_cfg >> _className >> "vehicleClass"); // get the vehicle class (we're going for backpacks ... see below)

	

		if (_scope >= 2 && {_vehClass == "Backpacks"}) then { // If the item isn't a base class and the vehicle class text is "backpacks" then ...
			_displayname = _classname call ISSE_Cfg_Vehicle_GetName;
			//diag_log format ["%1 -- %2", _className, _Displayname]; //Print the className to your rpt
			
			_bpList set [count _bpList, _displayname]; // Throw the classname into the array

		};

	};
		UG_PICK_BP = True;
		_ObjectTypeText = [];
		lbClear _objectListBox;
    {

		_ObjectListBox lbAdd format['%1',_x];
		lbSetData [(lbsize _ObjectListBox)-1,_x];
        

    } foreach _bplist;
};
};

if (_ObjectTypeName == "Headgear") then{Diag_log "Headgear";
_cfg = configfile >> "CfgVehicles"; // define the initial path

_bpList = [];// define an array



for "_i" from 0 to count _cfg - 1 do { // iterate through cfgVehicles 

	if (isClass (_cfg select _i)) then {// if the item is a class then ...

		_className = configName (_cfg select _i); // Get the className of the item

		_scope = getNumber (_cfg >> _className >> "scope"); // Get the scope of the item, used to sort out base items

		_vehClass = getText (_cfg >> _className >> "vehicleClass"); // get the vehicle class (we're going for backpacks ... see below)

	

		if (_scope >= 2 && {_vehClass == "ItemsHeadgear"}) then { // If the item isn't a base class and the vehicle class text is "backpacks" then ...
			_displayname = _classname call ISSE_Cfg_Vehicle_GetName;
			//diag_log format ["%1 -- %2", _className, _Displayname]; //Print the className to your rpt
			
			_bpList set [count _bpList, _displayname]; // Throw the classname into the array

		};

	};
		UG_PICK_HG = true;
		_ObjectTypeText = [];
		lbClear _objectListBox;
    {

		_ObjectListBox lbAdd format['%1',_x];
		lbSetData [(lbsize _ObjectListBox)-1,_x];
        

    } foreach _bplist;

};
};

if (_ObjectTypeName == "Exile Cars") then{Diag_log "Exile Cars";
_cfg = configfile >> "CfgVehicles"; // define the initial path

_bpList = [];// define an array



for "_i" from 0 to count _cfg - 1 do { // iterate through cfgVehicles 

	if (isClass (_cfg select _i)) then {// if the item is a class then ...

		_className = configName (_cfg select _i); // Get the className of the item

		_scope = getNumber (_cfg >> _className >> "scope"); // Get the scope of the item, used to sort out base items

		_vehClass = getText (_cfg >> _className >> "vehicleClass"); // get the vehicle class (we're going for backpacks ... see below)

	

		if (_scope >= 2 && {_vehClass == "ExileCars"}) then { // If the item isn't a base class and the vehicle class text is "backpacks" then ...
			_displayname = _classname call ISSE_Cfg_Vehicle_GetName;
			//diag_log format ["%1 -- %2", _className, _Displayname]; //Print the className to your rpt
			
			_bpList set [count _bpList, _Classname]; // Throw the classname into the array

		};

	};
		UG_PICK_EC = true;
		_ObjectTypeText = [];
		lbClear _objectListBox;
    {

		_ObjectListBox lbAdd format['%1',_x];
		lbSetData [(lbsize _ObjectListBox)-1,_x];
        

    } foreach _bplist;

};
};