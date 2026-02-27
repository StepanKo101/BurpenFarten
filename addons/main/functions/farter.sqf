params ["_caller"];

_pos = getPosASL _caller;

//selectRandom below selects a real class, not just a string
_fart = selectRandom ["fart1", "fart2", "fart3", "fart4", "fart5", "fart6", "fart7", "fart8", "fart9", "fart10", "fart11", "fart12"];
// systemChat str format ["%1", _fart];
// systemChat str format ["Position: %1", _pos];
_farting = _caller say3D _fart;
_caller setMimic "dead";
waitUntil {isNull _farting};
uiSleep 0.5;
_caller setMimic "";
// systemChat "Script executed";
