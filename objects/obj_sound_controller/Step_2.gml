if(current_sound_vol != global.sound_vol){
	current_sound_vol = global.sound_vol;
	audio_set_master_gain(0, current_sound_vol);
}

if(!audio_is_playing(snd_menu)){
	audio_play_sound(snd_menu, 1, true);	
}
