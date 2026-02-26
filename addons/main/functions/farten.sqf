player addAction [
    "Farten",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_caller] execVM "\z\bf\addons\main\functions\farter.sqf"; // to let farter know the position of the player
    },
    nil,
    1,
    false,
    false,
    "", // keybind shortcut (leave empty or use e.g. "User1")
    "true",
    0,
    false,
    "",
    ""
];