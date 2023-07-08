/// @description Insert description here
// You can write your code in this editor
image_xscale = 2;
image_yscale = 2;

depth = -10000;

// padding for area scanning in pixels
scan_area_padding = 100; 

min_width = scan_area_padding;
min_height = scan_area_padding;

max_width = room_width - scan_area_padding;
max_height = room_height - scan_area_padding;

eye_scan_interval = 480; // 60 = 1 second

new_x = 0;
new_y = 0;
lerped_x = 0;
lerped_y = 0;
lerp_speed_x = 0.01;
lerp_speed_y = 0.001;

detected = false;


function get_random_coord(_max_dimension_value)
{
	new_val = random_range(0, _max_dimension_value);
	return new_val;
}

function get_random_lerp_speed()
{
	return random_range(0.001, 0.01);
}

alarm[0] = 0;
