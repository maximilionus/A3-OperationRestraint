waitUntil {alive player};


//[Credits: \INFO\COPYRIGHTS.txt]

_intro = [] execVM "Scripts\CTSC\intro.sqf";
_notes_M = player createDiarySubject ["notes", localize "STR_opr_diary_mainname"];
_notes_F = player createDiarySubject ["notesf", localize "STR_opr_diary_found"];
_weaponholster = [] execVM "Scripts\weaponholster.sqf";
_briefing = [] execVM "Scripts\briefing.sqf";
_3rdprestrict = [] execVM "Scripts\3restr.sqf";
_healthregen = [] execVM "Scripts\health_regen.sqf";
_removepond = [] execVM "Scripts\removeponds.sqf";
