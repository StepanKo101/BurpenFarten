player addAction [
    "Burpen",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_caller] execVM "\z\bf\addons\main\functions\burper.sqf"; // to let burper know the position of the player
    },
    nil,
    1,
    false,
    false,
    "", // keybind shortcut (leave empty or use e.g. "User1")
    "true",
    0.1,
    false,
    "",
    ""
];
