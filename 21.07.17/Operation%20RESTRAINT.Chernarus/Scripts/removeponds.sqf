if(!hasInterface && !isDedicated) exitWith {};

if(!hasInterface || isServer) then {
	_noPondMaps = [
		"Altis",
		"Stratis",
		"Tanoa",
		"Malden"
	];
	if(_noPondMaps find worldName >= 0) exitWith {};

	_pondTypes = [
		"pond",
		"pont",   // one of these on podagorsk
		"zr_dam", // zargabad
		// lythium ponds
		"stream6wide",
		"riverwide_normal"
	];

	// TODO: Use map-specific lookup tables e.g. for Lythium
	{
		_obj = _x;
		_objStr = format ["%1", _x];
		{
			if ([_x, _objStr] call BIS_fnc_inString) exitWith {
				hideObjectGlobal _obj;
			};
		} forEach _pondTypes;
	} forEach nearestTerrainObjects [player, ["hide"], 60000];
}
