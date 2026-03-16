// systemChat "burpenKey.sqf script starts";

[
    "BF",
    "burpen_key",
    "Burpen",
    {
        [player] call BF_fnc_burper;
    },
    {},
    [0x30, [false, false, false]]  // 0x30 = B 
] call CBA_fnc_addKeybind;

//params ["_caller"];
//[_caller] execVM "\z\bf\addons\main\functions\burper.sqf"; // to let burper know the position of the player
