/*
[] execVM "weaponholster.sqf";
Execute this somehow either in-game debug console or with a onPlayerRespawn.sqf
*/

_unit = player;

_unit addAction [
	localize "STR_opr_hud_weaponhscr_holster",
	{(_this select 1) action ["SwitchWeapon",(_this select 1),(_this select 1),100];},
	true,
	1,
	false,
	false,
	"",
	"(!(currentWeapon _target == '') && (count weapons player > 0))"
	];
