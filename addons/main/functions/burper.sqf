// systemChat "burper.sqf script starts";

params ["_burper"];

//selectRandom below selects a real class, not just a string
_burp = selectRandom ["burp1", "burp2", "burp3", "burp4", "burp5", "burp6", "burp7", "burp8", "burp9", "burp10", "burp11", "burp12"];

//systemChat str format ["%1", _burp];
//systemChat str format ["Position: %1", _pos];

_burping = _burper say3D _burp;
_burper setMimic "dead";
waitUntil {isNull _burping};
_burper setMimic "";

// systemChat "burper.sqf script executed";
