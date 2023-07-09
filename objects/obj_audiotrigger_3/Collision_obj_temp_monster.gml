if(!is_playing){
	audio_stop_sound(mus_mainmenu);
	audio_stop_sound(sd_whisper);
	
	audio_play_sound(sd_whisper_2, 0, 1, 1.0, 0.0, 1.0);
	audio_play_sound(sd_lamp_on, 0, 0, 1.0, 0.0, 1.0);
	is_playing=true;
}

