//UG_GETSELECTEDPIC
private["_Desc","_Displayname","_Load","_ObjectListBox","_ObjectPicBox","_ObjectTypeName","_ObjectTypeText","_display","_formattedText","_picture","_selection"];
//getting ctrl data
_display = findDisplay 7450;
_ObjectListBox = _display displayCtrl 7455;
_ObjectTypeText = _display displayCtrl 7455;
_selection = lbCurSel _ObjectTypeText; if(_selection < 0) exitWith{};
_ObjectTypeName = lbtext [7455,_selection];
_ObjectPicBox = _display displayCtrl 7453;

_Displayname = _ObjectTypeName call ISSE_Cfg_Vehicle_GetName;


_picture = _ObjectTypeName call ISSE_Cfg_Vehicle_GetPic; 
_Desc = _ObjectTypeName call ISSE_Cfg_Vehicle_GetDesc;
_Load = _ObjectTypeName call ISSE_Cfg_Vehicle_GetMaxLoad;



_formattedText = format [
"<img image='%1'  size='5'  align='center'/><br />" +
"<t color='#33BFFF'>Name: </t><t color='#ffffff'>%2</t><br />"+
"<t color='#33BFFF'>MaxLoad: </t><t color='#ffffff'>%3</t><br />"+
"<t color='#33BFFF'>Description: </t><t color='#ffffff'>%4</t><br />"
, _picture, _ObjectTypeName, _Load, _Desc
];
lbClear _ObjectPicBox;
_ObjectPicBox ctrlSetStructuredText parseText _formattedText;