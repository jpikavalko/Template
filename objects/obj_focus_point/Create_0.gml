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

//peaceful_eye_scan_interval = 240;
//alarmed_eye_scan_interval = 90;
//detected_eye_scan_interval = 5;
eye_scan_interval = 240; // 60 = 1 second

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

function get_random_coord(_min_dimension_value, _max_dimension_value)
{
	var _new_val = random_range(_min_dimension_value, _max_dimension_value);
	return _new_val;
}

function get_random_lerp_speed(_min_speed, _max_speed)
{
	return random_range(_min_speed, _max_speed);
}

alarm[0] = eye_scan_interval;

// Shader stuff

function set_focus_mode(_focus_mode)
{
	if (_focus_mode == "peaceful")
	{
		target_focus_radius    = peaceful_focus_radius;
		target_blur_radius     = peaceful_blur_radius;
		target_vignette_radius = peaceful_vignette_radius;
		target_vignette_feater = peaceful_vignette_feater;
	
	} else 	if (_focus_mode == "alarmed")
	{
		target_focus_radius    = alarmed_focus_radius;
		target_blur_radius     = alarmed_blur_radius;
		target_vignette_radius = alarmed_vignette_radius;
		target_vignette_feater = alarmed_vignette_feater;
	} else 	if (_focus_mode == "detected")
	{
		target_focus_radius    = detected_focus_radius;
		target_blur_radius     = detected_blur_radius;
		target_vignette_radius = detected_vignette_radius;
		target_vignette_feater = detected_vignette_feater;
	}
}

peaceful_focus_radius		= 0.2;
peaceful_blur_radius		= 2.0;
peaceful_vignette_radius	= 0.1;
peaceful_vignette_feater	= 0.8;

alarmed_focus_radius		= 0.15;
alarmed_blur_radius			= 1.5;
alarmed_vignette_radius		= 0.08;
alarmed_vignette_feater		= 0.6;

detected_focus_radius		= 0.1;
detected_blur_radius		= 1.0;
detected_vignette_radius	= 0.05;
detected_vignette_feater	= 0.4;

current_focus_radius		= 0.2;
current_blur_radius			= 2.0;
current_vignette_radius		= 0.1;
current_vignette_feater		= 0.8;

target_focus_radius			= 0.2;
target_blur_radius			= 2.0;
target_vignette_radius		= 0.1;
target_vignette_feater		= 0.8;