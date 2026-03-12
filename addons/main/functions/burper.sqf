// systemChat "burper.sqf script starts";

params ["_burper"];

_gas = _burper getVariable ["gas", 0];
_burp = "";
//systemChat format ["GASSINESS IS AT LEVEL: %1", _gas];

if (_gas <= 1.01) then {
	_burp = selectRandom ["fail1", "fail2", "fail3"];
		if (local _burper) then {
			systemChat "You are not gassy enough to burp! Wait a bit longer.";
	};
};

if (_gas > 1 && _gas < 5) then {
	_burp = selectRandom ["blow1", "blow2", "blow3", "blow4", "blow5"];
	if (local _burper) then {
		_exhaust = 2;
		_burper setVariable ["gas", _gas - _exhaust, false];
	};
};

if (_gas >= 5 && _gas < 8) then {
	_burp = selectRandom ["bmid1", "bmid2", "bmid3", "bmid4"];
	if (local _burper) then {
		_exhaust = 4;
		_burper setVariable ["gas", _gas - _exhaust, false];
	};
};

if (_gas >= 8) then {
	_burp = selectRandom ["bgrand1", "bgrand2", "bgrand3"];
	if (local _burper) then {
		_exhaust = 5;
		_burper setVariable ["gas", _gas - _exhaust, false];
	};
};

_burping = _burper say3D _burp;
_burper setMimic "dead";
waitUntil {isNull _burping};
_burper setMimic "";

//systemChat format ["GASSINESS IS AT LEVEL: %1", _gas];

// systemChat "burper.sqf script executed";
