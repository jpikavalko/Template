/// @description Insert description here
// You can write your code in this editor

if (obj_temp_monster.player_in_cover)
{
	// Scanning the room peacefully...
	obj_debug_text.text_to_draw = "Scanning peacefully..."
	set_scan_area(100);
		
	new_x = get_random_coord(min_width, max_width);
	new_y = get_random_coord(min_height, max_height);
	
	lerp_speed_x = get_random_lerp_speed(0.001, 0.01);
	lerp_speed_y = get_random_lerp_speed(0.001, 0.01);
}

// og was just this
//new_x = get_random_coord(max_width);
//new_y = get_random_coord(max_height);

//lerp_speed_x = get_random_lerp_speed(false);
//lerp_speed_y = get_random_lerp_speed(false);