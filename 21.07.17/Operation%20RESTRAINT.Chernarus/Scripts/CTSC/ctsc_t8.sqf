// by ALIAS
// Thanks for this script ALIAS :3 "from MAXIMILI"

// if (isDedicated) exitWith {};

//playsound "action_3";

if (hasInterface) then {
cutText ["", "BLACK IN", 10];
setViewDistance 9000;
player setPos (getpos (end_teleport_player)); player allowDamage false; deletevehicle addictunit1;
[] spawn {sleep 14; execVM "scripts\opr_credits.sqf";};
[] spawn {sleep 4; ctsc_t8_helimain enableSimulation true; ctsc_t8_helimain hideObject false;};
[] spawn {sleep 32; [[localize "STR_opr_dialogs_unknownname1", localize "STR_opr_dialogs_unkn_ctsc_t8_1", 0], [localize "STR_opr_dialogs_unknownname2", localize "STR_opr_dialogs_unkn_ctsc_t8_2", 8], [localize "STR_opr_dialogs_unknownname1", localize "STR_opr_dialogs_unkn_ctsc_t8_3", 13], [localize "STR_opr_dialogs_unknownname2", localize "STR_opr_dialogs_unkn_ctsc_t8_4", 21], [localize "STR_opr_dialogs_unknownname1", localize "STR_opr_dialogs_unkn_ctsc_t8_5", 26], [localize "STR_opr_dialogs_unknownname2", localize "STR_opr_dialogs_unkn_ctsc_t8_6", 35], [localize "STR_opr_dialogs_unknownname2", localize "STR_opr_dialogs_unkn_ctsc_t8_7", 44], [localize "STR_opr_dialogs_unknownname1", localize "STR_opr_dialogs_unkn_ctsc_t8_8", 53], [localize "STR_opr_dialogs_unknownname2", localize "STR_opr_dialogs_unkn_ctsc_t8_9", 62], [localize "STR_opr_dialogs_unknownname2", localize "STR_opr_dialogs_unkn_ctsc_t8_10", 71], [localize "STR_opr_dialogs_unknownname1", localize "STR_opr_dialogs_unkn_ctsc_t8_11", 77], [localize "STR_opr_dialogs_unknownname2", localize "STR_opr_dialogs_unkn_ctsc_t8_12", 83], [localize "STR_opr_dialogs_unknownname1", localize "STR_opr_dialogs_unkn_ctsc_t8_13", 92]] spawn bis_fnc_exp_camp_playsubtitles;};
[] spawn {sleep 135; ["opr_ending_true", true, 15, false, false] spawn bis_fnc_endmission;};

0 = ["DynamicBlur", 400, [1]] spawn {
	params ["_name", "_priority", "_effect", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = 1;
	};
	_handle ppEffectEnable true;
	_handle ppEffectAdjust _effect;
	_handle ppEffectCommit 30;
	waitUntil {ppEffectCommitted _handle};
};

// if (!isNil "_camera_run") exitWith {}; _camera_run = true;

introended = false;
loopdone = false;
while {!loopdone} do {if ((introended) and (!loopdone)) then {loopdone = true; /* publicVariable "loopdone";*/};

_ctsct8_1 = [ctsc_t8_cam1, ctsc_t8_cam1, ctsc_t8_cam1_target, 15, 0.8, 0.6, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct8_1};
_ctsct8_2 = [ctsc_t8_helimainD, ctsc_t8_helimainD, ctsc_t8_helimainD, 15, 0.4, 0.1, true, 0, -8, 70] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct8_2};
_ctsct8_3 = [ctsc_t8_cam2, ctsc_t8_cam2_1, ctsc_t8_cam2_1, 20, 0.5, 0.5, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct8_3};
_ctsct8_4 = [intro_cam1, intro_cam1, intro_target1, 10, 0.8, 0.8, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct8_4};
_ctsct8_5 = [ctsc_t8_cam3, ctsc_t8_cam3, ctsc_t8_cam3_target, 15, 0.8, 0.8, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct8_5};
_ctsct8_6 = [ctsc_t8_cam4, ctsc_t8_cam4_1, ctsc_t8_cam4_target, 20, 0.5, 0.2, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct8_6};
_ctsct8_7 = [ctsc_t8_cam5, ctsc_t8_cam5_1, ctsc_t8_cam5_target, 20, 0.5, 0.1, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct8_7};
_ctsct8_8 = [ctsc_t8_cam6, ctsc_t8_cam6_1, ctsc_t8_cam6_target, 50, 0.5, 0.5, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct8_8};


introended = true; publicVariable "introstarted";

};

};
