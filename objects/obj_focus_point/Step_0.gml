/// @description Insert description here
// You can write your code in this editor

if (alarm[0] <= 0)
{
	alarm[0] = eye_scan_interval;
}

lerped_x = lerp(x, new_x, lerp_speed_x);
lerped_y = lerp(y, new_y, lerp_speed_y);
x = lerped_x;
y = lerped_y;

var _normalized_x = ((lerped_x - min_width) / (max_width - min_width) );
var _normalized_y = ((lerped_y - min_height) / (max_height - min_height) );

global.focus_x = _normalized_x;
global.focus_y = _normalized_y;

detected = place_meeting(x, y, obj_temp_monster);

// Shader stuff
if (obj_temp_monster.player_in_cover)
{
	// peaceful
	set_focus_mode("peaceful");
}
else
{
	set_focus_mode("alarmed");
	// Start following player after a while
	
	//obj_debug_text.text_to_draw = "Alarmed\nLooking for player..."
		
	new_x = obj_temp_monster.x - obj_temp_monster.sprite_xoffset / 2;
	new_y = obj_temp_monster.y - obj_temp_monster.sprite_yoffset / 2;

	lerp_speed_x = get_random_lerp_speed(0.005, 0.05);
	lerp_speed_y = get_random_lerp_speed(0.005, 0.05);
	
	if (detected)
	{
		// Detected
		set_focus_mode("detected");
		obj_debug_text.text_to_draw = "Detected!"
		

		new_x = obj_temp_monster.x - obj_temp_monster.sprite_xoffset / 2;
		new_y = obj_temp_monster.y - obj_temp_monster.sprite_yoffset / 2;

		lerp_speed_x = get_random_lerp_speed(0.009, 0.09);
		lerp_speed_y = get_random_lerp_speed(0.009, 0.09);
	}
}

current_focus_radius		= lerp(current_focus_radius,    target_focus_radius,	0.1);
current_blur_radius			= lerp(current_focus_radius,    target_focus_radius,	0.1);
current_vignette_radius		= lerp(current_vignette_radius, target_vignette_radius, 0.1);
current_vignette_feater		= lerp(current_vignette_feater, target_vignette_feater, 0.1);

global.focus_radius     = current_focus_radius;
global.blur_radius      = current_blur_radius;
global.vignette_radius  = current_vignette_radius;
global.vignette_feather = current_vignette_feater;
