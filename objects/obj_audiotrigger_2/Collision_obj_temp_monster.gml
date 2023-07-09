if(!is_playing){
	audio_stop_sound(mus_mainmenu);
	audio_stop_sound(sd_breathing_mild);
	
	audio_play_sound(mus_musicbox_loop, 0, 1, 1.0, 0.0, 1.0);
	audio_play_sound(sd_breathing_heavy, 0, 1, 1.0, 0.0, 1.0);
	audio_play_sound(sd_carcrash_oneshot, 0, 0, 1.0, 0.0, 1.0);
	audio_play_sound(sd_tv_static, 0, 1, 1.0, 0.0, 1.0);
	is_playing=true;
}

