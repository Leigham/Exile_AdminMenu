"Exile_AdminShowSpawnDialog" addPublicVariableEventHandler {_this select 1 call Exile_AdminShowSpawnDialog_Server};

Exile_AdminShowSpawnDialog_Server = {
private ["_dialog"];
_dialog = createdialog "KeyMakerLega";
waitUntil { !dialog };
};