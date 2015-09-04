//Exile_AdminGetItemDetails.sqf
private ["_BPDetails","_HGDetails","_ObjectCatName","_ObjectCatText","_ObjectTypeName","_ObjectTypeText","_ObjectcatText","_catselection","_display","_selection","_typeselection"];
_ObjectCatText = _display displayCtrl 7454;
_catselection = lbCurSel _ObjectcatText; if(_selection < 0) exitWith{};
_ObjectCatName = lbtext [7454,_catselection];

_ObjectTypeText = _display displayCtrl 7455;
_typeselection = lbCurSel _ObjectTypeText; if(_selection < 0) exitWith{};
_ObjectTypeName = lbtext [7455,_typeselection];



if(UG_PICK_BP)Then{

_BPDetails = _ObjectTypeName call Exile_AdminGetBackpackPicture;


};
if(UG_PICK_HG)then{

_HGDetails = _ObjectTypeName call Exile_AdminGetHeadGearPicture;

};
if(UG_PICK_EC)then{

_VehicleDetails = _ObjectTypeName call Exile_AdminGetVehiclePicture;

};
