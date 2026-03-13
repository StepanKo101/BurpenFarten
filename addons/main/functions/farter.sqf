//systemChat "farter.sqf script starts";
//systemChat format ["farter.sqf called from: %1", diag_stacktrace apply {_x select 3}];
params ["_farter"];

_gas = _farter getVariable ["gas", 0];
_fart = "";
_lang = language;
//systemChat format ["GASSINESS IS AT LEVEL: %1", _gas];

if (_gas <= 1.01) then {
	_fart = selectRandom ["fail2"]; //2 are anger noise
		if (local _farter) then {
			if (_lang == "Russian") then {
				systemChat "Мне сейчас нечем пёрнуть!";
			} else {
				systemChat "I don't have enough gas to fart!";
			};
	};
	_gasBuildup = selectRandom [0.01, 0.02, 0.03, 0.01, 0.02, 0.03, 0.01, 0.02, 0.03, 0.01, 0.02, 0.03, 10];
	// applying gas buildup to player variable
	_currentGas = _farter getVariable ["gas", 0];
	_newGas = _currentGas + _gasBuildup;
	_farter setVariable ["gas", _newGas, false];
	// systemChat format ["GASSINESS IS AT LEVEL: %1", _newGas];
};

if (_gas > 1 && _gas < 5) then {
	_fart = selectRandom ["flow1", "flow2", "flow3"];
	if (local _farter) then {
		_exhaust = 2;
		_farter setVariable ["gas", _gas - _exhaust, false];
	};
};

if (_gas >= 5 && _gas < 8) then {
	_fart = selectRandom ["fmid1", "fmid2", "fmid3", "fmid4", "fmid5"];
	if (local _farter) then {
		_exhaust = 4;
		_farter setVariable ["gas", _gas - _exhaust, false];
	};
};
if (_gas >= 8) then {
	_fart = selectRandom ["fgrand1", "fgrand2", "fgrand3", "fgrand4"];
	if (local _farter) then {
		_exhaust = 5;
		_farter setVariable ["gas", _gas - _exhaust, false];
	};
};

_farting = _farter say3D _fart;
waitUntil {isNull _farting};
//systemChat format ["GASSINESS IS AT LEVEL: %1", _gas];

//player setMimic "dead";
//waitUntil {isNull _farting};
//uiSleep 0.5;
//player setMimic "";

//systemChat "farter.sqf script executed";
