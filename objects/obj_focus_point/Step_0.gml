/// @description Insert description here
// You can write your code in this editor

if (alarm[0] < 0)
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


if (obj_temp_monster.player_in_cover)
{
	//global.focus_radius = 0.2;
	//global.blur_radius = 2.0;
	//global.vignette_radius = 0.1;
	//global.vignette_feather = 0.8;
}
else
{
	// Start following player after a while
	//global.focus_radius = 0.1;
	//	global.blur_radius = 1.0;
	//global.vignette_radius = 0.05;
	//global.vignette_feather = 0.4;
	
	if (detected)
	{
		// INSANITY
		//global.focus_radius = 0.05;
		//global.blur_radius = 0.5;
		//global.vignette_radius = 0.025;
		//global.vignette_feather = 0.2;
	}
	else if (!detected)
	{
		// do nothing special..
	}
}

if (obj_temp_monster.player_in_cover)
{
	global.focus_radius = 0.2;
	global.blur_radius = 2.0;
	global.vignette_radius = 0.1;
	global.vignette_feather = 0.8;
}