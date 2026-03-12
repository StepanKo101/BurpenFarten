//systemChat "farter.sqf script starts";
//systemChat format ["farter.sqf called from: %1", diag_stacktrace apply {_x select 3}];
params ["_farter"];

_gas = _farter getVariable ["gas", 0];
_fart = "";
//systemChat format ["GASSINESS IS AT LEVEL: %1", _gas];

if (_gas <= 1.01) then {
	_fart = selectRandom ["fail1", "fail2", "fail3"];
		if (local _farter) then {
			systemChat "You are not gassy enough to fart! Wait a bit longer.";
	};
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
