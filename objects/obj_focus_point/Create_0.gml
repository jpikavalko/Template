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

peaceful_eye_scan_interval = 240;
alarmed_eye_scan_interval = 90;
detected_eye_scan_interval = 15;
eye_scan_interval = peaceful_eye_scan_interval; // 60 = 1 second

new_x = 0;
new_y = 0;
lerped_x = 0;
lerped_y = 0;
lerp_speed_x = 0.01;
lerp_speed_y = 0.001;

detected = false;

function set_scan_area(_padding)
{
	min_width = _padding ;
	min_height = _padding * (9/16);

	max_width = room_width - _padding ;
	max_height = room_height - _padding * (9/16);
}

// should be flags for width and height.
function get_random_coord(_max_dimension_value)
{
	var _new_val = random_range(min_width, _max_dimension_value);
	return _new_val;
}

function get_random_lerp_speed(_player_in_cover)
{
	if (_player_in_cover)
	{
		return random_range(0.001, 0.01);
	}
	else{
		return random_range(0.005, 0.05);
	}

}

alarm[0] = peaceful_eye_scan_interval = 420;

// shader values
default_focus_radius = 0.2;
default_blur_radius = 2.0;
default_vignette_radius = 0.1;
default_vignette_feater = 0.8;



