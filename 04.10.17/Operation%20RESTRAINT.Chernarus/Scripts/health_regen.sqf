private ["_newDamage","_t"];
while {alive player} do
{
_t = time;
waitUntil {time - _t > 1};
if (damage player > 0) then
	{
	_newDamage = (damage player) - 0.05;
	player setdamage _newDamage;
};
sleep 15;
};

waitUntil{alive player};
sleep 0.5;
[player] execVM "regen_health.sqf";
