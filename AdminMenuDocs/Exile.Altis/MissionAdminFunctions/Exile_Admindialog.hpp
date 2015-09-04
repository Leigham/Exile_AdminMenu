class KeyMakerLega {
	idd = 7450;
	movingEnable = true;
	onLoad = "_this ExecVM 'spawnonload.sqf'";
	class controlsBackground {
class Exile_Spawn_AdminControlsBack: ExileAdmin_IGUIBACK
{
	idc = 7461;
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.247108 * safezoneH + safezoneY;
	w = 0.159844 * safezoneW;
	h = 0.527775 * safezoneH;
	colorBackground[] = {0,0,0,0.7};
	colorActive[] = {0,0,0,0.7};
};
class Exile_Spawn_AdminMainBack: ExileAdmin_IGUIBACK
{
	idc = 7451;
	x = 0.453594 * safezoneW + safezoneX;
	y = 0.247108 * safezoneH + safezoneY;
	w = 0.252656 * safezoneW;
	h = 0.439812 * safezoneH;
	colorBackground[] = {0,0,0,0.7};
	colorActive[] = {0,0,0,0.7};
};
class Exile_SpawnExtraControlsBack: ExileAdmin_IGUIBACK
{
	idc = 7452;
	x = 0.453594 * safezoneW + safezoneX;
	y = 0.68692 * safezoneH + safezoneY;
	w = 0.252656 * safezoneW;
	h = 0.0879625 * safezoneH;
	colorBackground[] = {0,0,0,0.7};
	colorActive[] = {0,0,0,0.7};
};
class Exile_SpawnAdminTop: ExileAdmin_IGUIBACK
{
	idc = 7466;
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.225117 * safezoneH + safezoneY;
	w = 0.4125 * safezoneW;
	h = 0.0219906 * safezoneH;
};

	};
	class controls {
class Exile_AdminSpawnSelf: RscButton
{
	idc = 7458;
	text = "SELF"; //--- ToDo: Localize;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.708911 * safezoneH + safezoneY;
	w = 0.0670312 * safezoneW;
	h = 0.0439812 * safezoneH;
	colorText[] = {1,1,1,1};
	onButtonClick =  "[(ctrlText 7455),(ctrlText 7457)] call Exile_AdminSpawnOnSelf";
	tooltip = "Spawn On Self"; //--- ToDo: Localize;
};
class Exile_AdminSpawnPlayer: RscButton
{
	idc = 7459;
	text = "PLAYER"; //--- ToDo: Localize;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.708911 * safezoneH + safezoneY;
	w = 0.0670312 * safezoneW;
	h = 0.0439812 * safezoneH;
	colorText[] = {1,1,1,1};
};
class Exile_SpawnPlayerList: RscCombo
{
	idc = 7456;
	x = 0.309219 * safezoneW + safezoneX;
	y = 0.66493 * safezoneH + safezoneY;
	w = 0.128906 * safezoneW;
	h = 0.0329859 * safezoneH;
	colorText[] = {1,1,1,1};
	text = "Choose a Player";
	tooltip = "Choose a Player ";
};
class Exile_SpawnCatList: RscCombo
{
	idc = 7454;
	x = 0.309218 * safezoneW + safezoneX;
	y = 0.258103 * safezoneH + safezoneY;
	w = 0.128906 * safezoneW;
	h = 0.0329859 * safezoneH;
	colorText[] = {1,1,1,1};
	Text = "Select an Item Type";
	tooltip = "Choose an Object Choice "; //--- ToDo: Localize;
	onLBSelChanged = "call Exile_AdminGetItemList";
};
class Exile_SpawnAdminListBox: RscListbox
{
	idc = 7455;
	x = 0.309218 * safezoneW + safezoneX;
	y = 0.302084 * safezoneH + safezoneY;
	w = 0.128906 * safezoneW;
	h = 0.35185 * safezoneH;
	colorText[] = {1,1,1,1};
	tooltip = "Choose an Item Type"; //--- ToDo: Localize;
	text = "Choose a Category";
	onLBSelChanged = "call Exile_AdminGetItemDetails";
};
class _Exile_AdminSpawnInfo: RscStructuredText
{
	idc = 7453;
	x = 0.463906 * safezoneW + safezoneX;
	y = 0.280094 * safezoneH + safezoneY;
	w = 0.232031 * safezoneW;
	h = 0.362845 * safezoneH;
	colorText[] = {1,1,1,1};
};
class Exile_SpawnClearHolders: RscButton
{
	idc = 7467;
	text = "COMING"; //--- ToDo: Localize;
	x = 0.474219 * safezoneW + safezoneX;
	y = 0.708911 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.0439812 * safezoneH;
	colorText[] = {1,1,1,1};

};
class Exile_SpawnPH1: RscButton
{
	idc = 7468;
	text = "CREATEHOLDER"; //--- ToDo: Localize;
	x = 0.603125 * safezoneW + safezoneX;
	y = 0.708911 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.0439812 * safezoneH;
	colorText[] = {1,1,1,1};
	onButtonClick =  "call Exile_AdminSpawnCreateHolder";
	tooltip = "CREATE WEAPON HOLDER"; //--- ToDo: Localize;
};
	};
};
