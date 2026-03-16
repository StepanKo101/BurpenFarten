//systemChat "farter.sqf script starts";
//systemChat format ["farter.sqf called from: %1", diag_stacktrace apply {_x select 3}];

_fartEmmiter = "Land_HelipadEmpty_F" createVehicleLocal [0,0,0];
_fartEmmiter attachTo [player, [0,0,0]];

_gas = player getVariable ["gas", 0];
_soundSourceFart = _fartEmmiter;
_fart = "";
_lang = language;
//systemChat format ["GASSINESS IS AT LEVEL: %1", _gas];

if (_gas <= 1.01) then {
	_fart = selectRandom ["fail2"]; //2 are anger noise
		// lang check for chat output
		if (local player) then {
			if (_lang == "Russian") then {
				systemChat "Мне сейчас нечем пёрнуть!";
			} else {
				systemChat "I don't have enough gas to fart!";
			};
	};
	// small chance for gas buildup if player tries to fart with no gas
	_gasBuildup = selectRandom [0.01, 0.02, 0.03, 0.01, 0.02, 0.03, 0.01, 0.02, 0.03, 0.01, 0.02, 0.03, 10];
	// applying gas buildup to player variable
	_currentGas = player getVariable ["gas", 0];
	_newGas = _currentGas + _gasBuildup;
	player setVariable ["gas", _newGas, false];
	//systemChat format ["GASSINESS IS AT LEVEL: %1", _newGas];
};

if (_gas > 1 && _gas < 5) then {
	_fart = selectRandom ["flow1", "flow2", "flow3"];
	if (local player) then {
		_exhaust = 2;
		player setVariable ["gas", _gas - _exhaust, false];
	};
};

if (_gas >= 5 && _gas < 8) then {
	_fart = selectRandom ["fmid1", "fmid2", "fmid3", "fmid4", "fmid5"];
	if (local player) then {
		_exhaust = 4;
		player setVariable ["gas", _gas - _exhaust, false];
	};
};
if (_gas >= 8) then {
	_fart = selectRandom ["fgrand1", "fgrand2", "fgrand3", "fgrand4"];
	if (local player) then {
		_exhaust = 5;
		player setVariable ["gas", _gas - _exhaust, false];
	};
};


//_farting = player say3D _fart;

[_soundSourceFart, _fart] remoteExec ["say3D", 0]

//waitUntil {isNull _farting};
//systemChat format ["GASSINESS IS AT LEVEL: %1", _gas];

//player setMimic "dead";
//waitUntil {isNull _farting};
//uiSleep 0.5;
//player setMimic "";

//systemChat "farter.sqf script executed";
