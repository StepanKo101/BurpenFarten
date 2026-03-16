/*
Gassiness goes from 0 to 10
*/
if (!hasInterface) exitWith {}; // if not running on client, exit

player setVariable ["gas", 8.5, false]; // Players spawn with medium gassiness
_gas = player getVariable ["gas", 0];
gasAdvice = 0;
/* OPTIMIZATION WAS ASS
while {player getVariable ["gas", 0] < 15} do {
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
}; */

// _gasHandle constantly adds some gas & GREATLY OPTIMIZED
_gasHandle = [
	{
		_gasBuildup = selectRandom [0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.07, 0.08, 0.09, 0.1, 0.2, 0.3]; // random gas buildup per cycle
		// applying gas buildup to player variable
		_currentGas = player getVariable ["gas", 0];
		_newGas = _currentGas + _gasBuildup;
		player setVariable ["gas", _newGas, false];
		systemChat format ["GASSINESS IS AT LEVEL: %1", _newGas];
		    // Auto-burp when gas gets too high
		if (_newGas > 14 && gasAdvice == 0) then {
			_lang = language;
			if (_lang == "Russian") then {
				systemChat selectRandom [
					"Я чувствую себя не очень хорошо.",
					"Ещё немного и я лопну.",
					"Бак вот-вот рваньйоооот!",
					"Мне бы стравить пару атмосфер.",
					"Всем лучше отойти..."
				];
				gasAdvice = 1; // disable chat spam
			} else {
				systemChat selectRandom [
					"I don't feel so good.",
					"I am about to burst.",
					"I am feeling incredibly... Gassy!",
					"This pressure is unbearable!",
					"Everyone better take a few steps back..."
				];
				gasAdvice = 1; // disable chat spam
			};
		};
		if (_newGas > 15) then {
			if (local player) then {
				player call BF_fnc_burper;
				player call BF_fnc_farter;
				player setVariable ["gas", 0, false];
				gasAdvice = 0; // reset gas advice for next time
			};
		};
	}, 10] call CBA_fnc_addPerFrameHandler;
