//Exile_AdminSpawnOnSelf
private ["_AmounttoSpawn","_Classname","_ObjectTypeName","_ObjectTypeText","_display","_pinCode","_position","_selection","_this","_typeselection","_veh"];
_display = findDisplay 7450;
_ObjectTypeText = _display displayCtrl 7455;
_typeselection = lbCurSel _ObjectTypeText;
_ObjectTypeName = lbtext [7455,_typeselection];
_AmounttoSpawn = _this select 1;
_Pos = position player;


_position - position player;
if(UG_PICK_EC)then{

_veh = _ObjectTypeName createVehicle _pos;
_veh setVariable ["ExileIsPersistent", true];
_veh setVariable ["ExileAccessCode",_pinCode];
};diag_log format ["%1 %2",_typeselection, _ObjectTypeName];
if(UG_PICK_BP)then{
_Classname = _objecttypename call Exile_AdminGetVicClassname;
UG_ADMIN_HOLDER addbackpackcargoglobal [_Classname,1];
diag_log format ["%1 -- %2 -- %3",_Classname, _AmounttoSpawn, _holder];
};
if(UG_PICK_HG)then{
_Classname = _objecttypename call Exile_AdminGetVicClassname;
UG_ADMIN_HOLDER additemcargoglobal [_Classname,1];
diag_log format ["%1 -- %2 -- %3",_Classname, _AmounttoSpawn, _holder];
};