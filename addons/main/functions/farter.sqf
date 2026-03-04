systemChat "farter.sqf script starts";
//systemChat format ["farter.sqf called from: %1", diag_stacktrace apply {_x select 3}];
//params ["_caller"];

_pos = getPosASL player;

//selectRandom below selects a real class, not just a string

_fart = selectRandom ["fart1", "fart2", "fart3", "fart4", "fart5", "fart6", "fart7", "fart8", "fart9", "fart10", "fart11", "fart12"];

// systemChat str format ["%1", _fart];
// systemChat str format ["Position: %1", _pos];

_farting = player say3D _fart;

//player setMimic "dead";
//waitUntil {isNull _farting};
//uiSleep 0.5;
//player setMimic "";

systemChat "farter.sqf script executed";
