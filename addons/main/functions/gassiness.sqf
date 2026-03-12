/*
Gassiness goes from 0 to 10
*/

if (!hasInterface) exitWith {}; // if not running on client, exit

player setVariable ["gas", 5, false]; // Players spawn with medium gassiness

while {true} do {
    _gasBuildup = selectRandom [0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.07, 0.08, 0.09, 0.1, 0.2, 0.3]; // Random gas buildup per cycle
    uiSleep 15; 
	// applying gas buildup to player variable
    _currentGas = player getVariable ["gas", 0];
    _newGas = _currentGas + _gasBuildup;
    player setVariable ["gas", _newGas, false];
	//systemChat format ["GASSINESS IS AT LEVEL: %1", _newGas];
	        // Auto-burp when gas gets too high
    if (_newGas > 15) then {
		systemChat "AAAH FUCK OOOOH SHIT!!!";
		uiSleep 3;
		_fartenSource = player;
		_burperSource = player;
        [_fartenSource] remoteExec ["BF_fnc_farter", 0];
		uiSleep 1;
		[_burperSource] remoteExec ["BF_fnc_burper", 0];
    };
};