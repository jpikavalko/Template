/// @description Insert description here
// You can write your code in this editor


if (obj_temp_monster.player_in_cover)
{
	// Scanning the room peacefully...
	set_scan_area(scan_area_padding);
		
	new_x = get_random_coord(max_width);
	new_y = get_random_coord(max_height);
	
	lerp_speed_x = get_random_lerp_speed(true);
	lerp_speed_y = get_random_lerp_speed(true);
	
	eye_scan_interval = peaceful_eye_scan_interval;
	
	obj_debug_text.text_to_draw = "Scanning peacefully..."
}
else
{
	// Start looking for player
	set_scan_area(200);
		
	new_x = get_random_coord(max_width);
	new_y = get_random_coord(max_height);

	lerp_speed_x = get_random_lerp_speed(false);
	lerp_speed_y = get_random_lerp_speed(false);

	eye_scan_interval = alarmed_eye_scan_interval;
	
	obj_debug_text.text_to_draw = "Looking for player..."
	
	if (detected)
	{
		obj_debug_text.text_to_draw = "Player detected.\n RUN!"
		
		// INSANITY
		new_x = obj_temp_monster.x;
		new_y = obj_temp_monster.y;

		lerp_speed_x = get_random_lerp_speed(false);
		lerp_speed_y = get_random_lerp_speed(false);
		
		eye_scan_interval = detected_eye_scan_interval;
	}
	else if (!detected)
	{
		// do nothing special..
	}
}

// og was just this
//new_x = get_random_coord(max_width);
//new_y = get_random_coord(max_height);

//lerp_speed_x = get_random_lerp_speed(false);
//lerp_speed_y = get_random_lerp_speed(false);