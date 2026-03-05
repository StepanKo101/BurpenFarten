//systemChat "FartenKey function called";

[
    "BF",
    "farten_key",
    "Farten",
    {
        _fartenSource = player;
        [_fartenSource] remoteExec ["BF_fnc_farter", 0];
		//systemChat str _this;  // Show what CBA is passing
		//waitUntil { !isNull player && !isNull (findDisplay 46) };  // ← Wait here until player exists
        //[player] execVM "\z\bf\addons\main\functions\farter.sqf";
    },
    {},
    [0x21, [false, false, false]]  // 0x21 = F
] call CBA_fnc_addKeybind;

//systemChat "FartenKey function called";

//params ["_caller"];
//[_caller] execVM "\z\bf\addons\main\functions\farter.sqf"; // to let farter know the position of the player
