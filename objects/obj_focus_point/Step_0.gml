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
	// Scanning the room
	show_debug_message("Scanning around the room...");
}
else
{
	// Start following player after a while
	show_debug_message("Follow player.");
	
	if (detected)
	{
		// INSANITY
		show_debug_message("Player found!");
	}
	else if (!detected)
	{
		// do nothing special..
	}
}