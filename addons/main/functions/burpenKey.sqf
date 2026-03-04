systemChat "BurpenKey function called";

[
    "BF",
    "burpen_key",
    "Burpen",
    {
        //systemChat str _this;  // Show what CBA is passing
        //waitUntil { !isNull player && !isNull (findDisplay 46) };  // ← Wait here until player exists
        [player] execVM "\z\bf\addons\main\functions\burper.sqf";
    },
    {},
    [0x30, [false, false, false]]  // 0x30 = B 
] call CBA_fnc_addKeybind;

//systemChat "BurpenKey function called";

//params ["_caller"];
//[_caller] execVM "\z\bf\addons\main\functions\burper.sqf"; // to let burper know the position of the player
