// Thanks for this script ALIAS :3 "from MAXIMILI"
// 27.05.2020 - OH MY GOD, WHAT IS THIS? My eyes are bleeding so hard... I want to die :(

playsound "intro_music";

if (hasInterface) then {
cutText ["", "BLACK IN", 10];

// if (!isNil "_camera_run") exitWith {}; _camera_run = true;

introended = false;
loopdone = false;
while {!loopdone} do {if ((introended) and (!loopdone)) then {loopdone = true; /* publicVariable "loopdone";*/};

setViewDistance 7000;
0 setOvercast 0;
setDate [2015, 05, 17, 4, 50];

_shot1 = [intro_cam1, intro_cam1, intro_target1, 20, 0.05, 0.1, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
_null = [] spawn {sleep 3; [[[localize "STR_opr_menu_chernarus","<t align = 'right' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"], [localize "STR_opr_menu_southzagoria","<t align = 'right' shadow = '1' size = '0.7'>%1</t><br/>"], ["17.05.2015","<t align = 'right' shadow = '1' size = '1.0'>%1</t>"]]] spawn BIS_fnc_typeText;};
waitUntil {scriptdone _shot1};
intro_gorka_car enableAI "MOVE";
_shot2 = [intro_cam_gorka1, intro_cam_gorka2, intro_target_gorka, 10, 0.6, 0.6, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _shot2};
intro_david_s playMove "Acts_B_out2_briefing";
_shot3 = [intro_david_cam2, intro_david_cam1, intro_david_5, 15, 0.6, 0.7, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _shot3};
[] spawn {sleep 7; intro_target2 enablesimulation true;};
_shot4 = [intro_cam_gora1, intro_cam_gora2, intro_target_gora, 20, 0.6, 0.6, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _shot4};
_shot5 = [intro_cam2, intro_cam2, intro_target2, 14, 0.01, 0.01, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _shot5};
_shot6 = [intro_cam3, intro_cam3, intro_target3_1, 10, 0.3, 0.05, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _shot6};
[] spawn {sleep 6; intro_target2 setDamage 0.9;};
[] spawn {sleep 8; mainp setUnconscious true;};
[] spawn {sleep 8; titleText ["", "BLACK", 2];};
_shot7 = [intro_cam7, intro_cam7, intro_target2, 10, 0.2, 0.01, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
waitUntil {scriptdone _shot7};
_shot8 = [intro_cam8, intro_cam8_1, mainp, 15, 1, 1, false, 0, 0, 0] execVM "scripts\camera_work.sqf";
[] spawn {sleep 5; titleText ["", "BLACK IN", 5];};
[] spawn {sleep 24; titleText ["", "BLACK IN", 4];};
[] spawn {sleep 30; mainp setUnconscious false;};
0 setOvercast 0.3; forceWeatherChange;
mainp setDamage 0.8;
deleteVehicle intro_target2; deleteVehicle intro_target2D; deleteVehicle intro_unit1; deleteVehicle intro_target3; deleteVehicle intro_target3C; deleteVehicle intro_target3D; deleteVehicle intro_target3G; deleteVehicle intro_david_unit1; deleteVehicle intro_david_unit2; deleteVehicle intro_david_s; deleteVehicle intro_david_1; deleteVehicle intro_david_2; deleteVehicle intro_david_3; deleteVehicle intro_david_4; deleteVehicle intro_david_5; deleteVehicle intro_gorka_unit1; deleteVehicle intro_gorka_car; deleteVehicle intro_target3_1;
waitUntil {scriptdone _shot8};

introended = true; publicVariable "introstarted";

};
setDate [2015, 05, 17, 18, 15];
setViewDistance -1;
};
