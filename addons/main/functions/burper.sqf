// systemChat "burper.sqf script starts";

_soundSourceBurp = player;
_gas = player getVariable ["gas", 0];
_burp = "";
_lang = language;
//systemChat format ["GASSINESS IS AT LEVEL: %1", _gas];

if (_gas <= 1.01) then {
	_burp = selectRandom ["fail1", "fail3"]; //1 & 3 are girl moans
		if (local player) then {
			if (_lang == "Russian") then {
				systemChat "Мне сейчас нечем рыгнуть!";
			} else {
				systemChat "I don't feel like burping.";
			};
	};
	_gasBuildup = selectRandom [0.01, 0.02, 0.03, 0.01, 0.02, 0.03, 0.01, 0.02, 0.03, 0.01, 0.02, 0.03, 10];
	// applying gas buildup to player variable
	_currentGas = player getVariable ["gas", 0];
	_newGas = _currentGas + _gasBuildup;
	player setVariable ["gas", _newGas, false];
	//systemChat format ["GASSINESS IS AT LEVEL: %1", _newGas];
};

if (_gas > 1 && _gas < 5) then {
	_burp = selectRandom ["blow1", "blow2", "blow3", "blow4", "blow5"];
	if (local player) then {
		_exhaust = 2;
		player setVariable ["gas", _gas - _exhaust, false];
	};
};

if (_gas >= 5 && _gas < 8) then {
	_burp = selectRandom ["bmid1", "bmid2", "bmid3", "bmid4"];
	if (local player) then {
		_exhaust = 4;
		player setVariable ["gas", _gas - _exhaust, false];
	};
};

if (_gas >= 8) then {
	_burp = selectRandom ["bgrand1", "bgrand2", "bgrand3"];
	if (local player) then {
		_exhaust = 5;
		player setVariable ["gas", _gas - _exhaust, false];
	};
};

[_soundSourceBurp, _burp] remoteExec ["say3D", 0];

/*
_burping = player say3D _burp;
player setMimic "dead";
waitUntil {isNull _burping};
player setMimic "";
*/

//systemChat format ["GASSINESS IS AT LEVEL: %1", _gas];

// systemChat "burper.sqf script executed";
