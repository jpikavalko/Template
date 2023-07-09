if(!is_playing){
	audio_stop_sound(sd_breathing_heavy);
	
	audio_play_sound(sd_breathing_intense, 0, 1, 1.0, 0.0, 1.0);
	audio_play_sound(sd_windwoosh, 0, 0, 1.0, 0.0, 1.0);
	is_playing=true;
}

