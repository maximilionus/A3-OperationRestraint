/*******
MAXIMILI
*******/
// Sound and music CFG. At this point music is SOUND cfg (it cant be disabled by setting music volume = 0)

class CfgSounds
{
	class Its_Waiting
	{
		name = "Its_Waiting"; // Music
		sound[] = {"\music\Its_Waiting.ogg", db+0, 1.0};
		titles[] = {0, ""};
	};
	class Time_Stops
	{
		name = "Time_Stops"; // Music
		sound[] = {"\music\Time_Stops.ogg", db+0, 1.0};
		titles[] = {0, ""};
	};
	class opr_radio_1
	{
		name = "opR_Radio_1"; // radio music #1
		sound[] = {"\music\radio_1.ogg", db+0, 1.0};
		titles[] = {0, ""};
	};
	class intro_music
	{
		name = "Cold_Sunset"; // intro music
		sound[] = {"\music\Cold_Sunset_2020.ogg", db+0, 1.0};
		titles[] = {0, ""};
	};
	class ambient_1 // A3 Music
	{
		sound[] = {"@A3\music_f_epb\Music\EventTrack04_F_EPB.ogg", db-5, 1.0};
		titles[] = {0, ""};
	};
	class ambient_2 // A3 Music
	{
		sound[] = {"@A3\music_f\Music\AmbientTrack01a_F.ogg", db-5, 1.0};
		titles[] = {0, ""};
	};
	class action_1 // A3 Music
	{
		sound[] = {"@A3\Music_F_Jets\Music\EventTrack01_F_Jets.ogg", db-5, 1.0};
		titles[] = {0, ""};
	};
	class action_2 // A3 Music
	{
		sound[] = {"@A3\music_f\Music\LeadTrack06_F.ogg", db-10, 1.0};
		titles[] = {0, ""};
	};
	class action_3 // A3 Music
	{
		sound[] = {"@A3\music_f_epb\Music\BackgroundTrack01_F_EPB.ogg", db-5, 1.0};
		titles[] = {0, ""};
	};
	class action_4 // A3 Music
	{
		sound[] = {"@DBE1\Models_dbe1\Music\04_outro.ogg", db-9, 1.0};
		titles[] = {0, ""};
	};
	class wt_beep // WT Beep sound effect
	{
		sound[] = {"\sound\wt_beep.ogg", db+0, 1.0};
		titles[] = {0, ""};
	};
	class murmur
	{
		name = "murmur"; // NBomb
		sound[] = {\sound\murmur.ogg, db+10, 1.0};
		titles[] = {0, ""};
	};
	class nuke
	{
		name = "nuke"; // NBomb
		sound[] = {\sound\nuke.ogg, db+20, 1.0};
		titles[] = {0, ""};
	};
	class nuke_2
	{
		name = "nuke_2"; // NBomb
		sound[] = {\sound\nuke_2.ogg, db+30, 1.0};
		titles[] = {0, ""};
	};
	class nuke_3
	{
		name = "nuke_3"; // NBomb
		sound[] = {\sound\nuke_3.ogg, db+25, 1.0};
		titles[] = {0, ""};
	};
	class wind_strong
	{
		name = "wind_strong"; // NBomb
		sound[] = {\sound\wind_strong.ogg, 1, 1.0};
		titles[] = {0, ""};
	};
	class geiger
	{
		name = "geiger"; // NBomb
		sound[] = {\sound\geiger.ogg, .7, 1.0};
		titles[] = {0, ""};
	};

};
