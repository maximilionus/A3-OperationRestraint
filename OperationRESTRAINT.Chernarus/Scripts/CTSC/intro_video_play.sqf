missionNamespace setVariable ["BIS_fnc_playVideo_skipVideo", false];
setAccTime 0;
_video = ["Video\vintro.ogv"] spawn BIS_fnc_playVideo;
waitUntil {scriptDone _video};
setAccTime 1;