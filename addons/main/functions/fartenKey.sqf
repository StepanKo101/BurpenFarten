//systemChat "FartenKey function called";

[
    "BF",
    "farten_key",
    "Farten",
    {
        player call BF_fnc_farter;
    },
    {},
    [0x21, [false, false, false]]  // 0x21 = F
] call CBA_fnc_addKeybind;

//systemChat "FartenKey function called";

//params ["_caller"];
//[_caller] execVM "\z\bf\addons\main\functions\farter.sqf"; // to let farter know the position of the player
