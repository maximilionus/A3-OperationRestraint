// by ALIAS
// Thanks for this script ALIAS :3 "from MAXIMILI"
// nul = [] execVM "intro.sqf";

// if (isDedicated) exitWith {};

playsound "action_3";

if (hasInterface) then {
cutText ["", "BLACK IN", 10];
[] spawn {sleep 2; task7_unithelitotask8_d disableai "MOVE"; task7_helitotask8 enableSimulation true; sleep 55; task7_unithelitotask8_d enableai "MOVE"};
[] spawn {sleep 21; [localize "STR_opr_dialogs_unknownname", localize "STR_opr_dialogs_unkn_t7_1"] call bis_fnc_showsubtitle;};
[] spawn {sleep 33; [localize "STR_opr_dialogs_unknownname", localize "STR_opr_dialogs_unkn_t7_2"] call bis_fnc_showsubtitle;};
[] spawn {sleep 46; playsound "wt_beep"; [localize "STR_opr_dialogs_unknownradioname", localize "STR_opr_dialogs_unkn_t7_3"] call bis_fnc_showsubtitle; sleep 8; playsound "wt_beep"; [localize "STR_opr_dialogs_unknownradioname", localize "STR_opr_dialogs_unkn_t7_4"] call bis_fnc_showsubtitle;};
[] spawn {sleep 78; [localize "STR_opr_dialogs_pavelname", localize "STR_opr_dialogs_pavel_t7_1"] spawn bis_fnc_showsubtitle; sleep 10; [localize "STR_opr_dialogs_pavelname", localize "STR_opr_dialogs_pavel_t7_2"] spawn bis_fnc_showsubtitle; sleep 10; [localize "STR_opr_dialogs_pavelname", localize "STR_opr_dialogs_pavel_t7_3"] spawn bis_fnc_showsubtitle;};
[] spawn {mainp enableSimulation false; addictunit1 enableSimulation false; sleep 74; mainp enableSimulation true; addictunit1 enableSimulation true;};

// if (!isNil "_camera_run") exitWith {}; _camera_run = true;

introended = false;
loopdone = false;
while {!loopdone} do {if ((introended) and (!loopdone)) then {loopdone = true; /* publicVariable "loopdone";*/};

_ctsct7_1 = [ctsc_t7_cam1, ctsc_t7_cam1, ctsc_t7_target_1, 10, 0.5, 0.5, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct7_1};
_ctsct7_2 = [ctsc_t7_cam2, ctsc_t7_cam2, task7_helitotask8, 10, 0.2, 0.2, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
task7_marine1 enableai "ALL"; task7_marine2 enableai "ALL"; task7_marine3 enableai "ALL"; task7_marine4 enableai "ALL";
waitUntil {scriptdone _ctsct7_2};
_ctsct7_3 = [ctsc_t7_cam3, ctsc_t7_cam3, task7_marine1, 10, 0.5, 0.2, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct7_3};
_ctsct7_4 = [task7_marine1, task7_marine1, task7_marine1, 5, 1, 1, true, 1, 0, 0.3] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct7_4};
_ctsct7_5 = [ctsc_t7_cam3_1, ctsc_t7_cam3_1, task7_marine3, 10, 1, 0.3, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct7_5};
_ctsct7_6 = [ctsc_t7_cam4, ctsc_t7_cam4, task7_unittarget1, 10, 0.3, 0.1, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct7_6};
_ctsct7_7 = [ctsc_t7_cam5, ctsc_t7_cam5, task7_helitotask8, 20, 0.05, 0.2, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _ctsct7_7};

introended = true; publicVariable "introstarted";

};

};
