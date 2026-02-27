params ["_caller"];

_pos = getPosASL _caller;

//selectRandom below selects a real class, not just a string
_burp = selectRandom ["burp1", "burp2", "burp3", "burp4", "burp5", "burp6", "burp7", "burp8", "burp9", "burp10", "burp11", "burp12"];
systemChat str format ["%1", _burp];
systemChat str format ["Position: %1", _pos];
_caller say3D _burp;
systemChat "Script executed";
