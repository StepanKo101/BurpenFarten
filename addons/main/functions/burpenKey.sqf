// systemChat "burpenKey.sqf script starts";

[
    "BF",
    "burpen_key",
    "Burpen",
    {
        // systemChat "Burpen keybind activated";
        _burperSource = player;
        [_burperSource] remoteExec ["BF_fnc_burper", 0];
        //waitUntil { !isNull player && !isNull (findDisplay 46) };  // ← Wait here until player exists
        //[player] execVM "\z\bf\addons\main\functions\burper.sqf";
    },
    {},
    [0x30, [false, false, false]]  // 0x30 = B 
] call CBA_fnc_addKeybind;

//params ["_caller"];
//[_caller] execVM "\z\bf\addons\main\functions\burper.sqf"; // to let burper know the position of the player
