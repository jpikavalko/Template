/// @description Insert description here
// You can write your code in this editor

path_number = 1;

// Set character to this point in path (in pixels)
_distance_in_path = 0;

// Total length of path for normalized character pos in path
_path_len = path_get_length(pth_path_1)

// character initial scale
min_scale = 0.25;

// Set speed for best results. Default = 5
character_speed = 5;

// Player is behind obstacle
player_in_cover = place_meeting(x, y, obj_obstacle);

// Makes character follow this path
with (other) path_start(pth_path_1, 0, path_action_reverse, false);

x_begin = 0;
y_begin = 0;
is_moving = false;
is_climbing = false;
last_x_dir = 1;

function move_player_a(_move_speed)
{
	if (path_number == 2)
	{
		_distance_in_path -= _move_speed;
	}else{
		_distance_in_path += _move_speed;
	}
	
	if (_distance_in_path < 0)
	{
		_distance_in_path = 0;
	}
	if (_distance_in_path >_path_len)
	{
		_distance_in_path = _path_len;
	}
	
	is_moving = true;
	
}