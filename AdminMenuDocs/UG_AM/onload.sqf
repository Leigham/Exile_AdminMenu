disableSerialization;

//Define idc's for controls for easy access
_ObjectType = 7454; // Object Type Combo Box.
_ItemChoice = 7455; //Object Choice.
_ItemNumber = 7457; //Number of Items.
//store display, passed from onLoad
_display = _this select 0;

//Add to our lb and combo lists
{
	_index = lbAdd [_ObjectType, _x];
} forEach ["Backpacks","Headgear","Exile Cars"];



// Player List
transfer_plist = [];

{
	if ((getPlayerUID _x != "") && (getPlayerUID _x != getPlayerUID player)) then {
		transfer_plist set [count transfer_plist, name _x];
	};
} forEach playableunits;

{
	if ((count crew _x) > 0) then {
		{
			if ((getPlayerUID _x != "") && (getPlayerUID _x != getPlayerUID player)) then {
				transfer_plist set [count transfer_plist, name _x];
			};
		} forEach crew _x;
	};
} forEach (entities "LandVehicle" + entities "Air" + entities "Ship");

_display = _this select 0;
_disp_plist = _display displayCtrl 7456;

if ((count transfer_plist) > 0) then {
	{
		_disp_plist lbAdd _x;
	} foreach transfer_plist;
};


