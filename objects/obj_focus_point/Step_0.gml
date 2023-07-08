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

var _normalized_x = ((lerped_x - 0) / (max_width - 0) );
var _normalized_y = ((lerped_y - 0) / (max_height - 0) );

global.focus_x = _normalized_x;
global.focus_y = _normalized_y;

detected = place_meeting(x, y, obj_temp_monster);

if (detected && !obj_temp_monster.player_in_cover)
{
	
}
else if (detected && obj_temp_monster.player_in_cover)
{
	
}