if(!is_playing){
	audio_stop_sound(mus_mainmenu)
	audio_play_sound(sd_whisper, 0, 1, 1.0, 0.0, 1.0);
	audio_play_sound(sd_open_musicbox, 0, 0, 1.0, 0.0, 1.0);
	is_playing=true;
}

