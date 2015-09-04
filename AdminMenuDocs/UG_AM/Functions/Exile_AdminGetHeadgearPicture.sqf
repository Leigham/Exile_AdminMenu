//UG_GETSELECTEDPIC
//getting ctrl data
_display = findDisplay 7450;
_ObjectListBox = _display displayCtrl 7455;
_ObjectTypeText = _display displayCtrl 7455;
_selection = lbCurSel _ObjectTypeText; if(_selection < 0) exitWith{};
_ObjectTypeName = lbtext [7455,_selection];
_ObjectPicBox = _display displayCtrl 7453;
_Classname = _objecttypename call Exile_AdminGetVicClassname;



_picture = _Classname call ISSE_Cfg_Vehicle_GetPic; 
_Desc = _Classname call ISSE_Cfg_Vehicle_GetDesc;
_Armor = _Classname call ISSE_Cfg_Vehicle_GetArmor;




_formattedText = format [
"<t color='#33BFFF'>Name: </t><t color='#ffffff'>%2</t><br />"+
"<t color='#33BFFF'>Armor Rating: </t><t color='#ffffff'>%3</t><br />"+
"<t color='#33BFFF'>Description: </t><t color='#ffffff'>%4</t><br />"
, _picture, _ObjectTypeName, _Armor, _Desc
];
lbClear _ObjectPicBox;
_ObjectPicBox ctrlSetStructuredText parseText _formattedText;