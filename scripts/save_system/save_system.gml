// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_save(){
	ini_open("settings.ini");
	//
	ini_write_real("settings", "volume", global.sound_vol);
	ini_write_real("settings", "fullscreen", window_get_fullscreen());
	//
	ini_close();
}

function src_load(){
	ini_open("settings.ini");
	//
	global.sound_vol = ini_read_real("settings", "volume", global.sound_vol);
	window_set_fullscreen(ini_read_real("settings", "fullscreen", window_get_fullscreen()));
	//
	ini_close();
}