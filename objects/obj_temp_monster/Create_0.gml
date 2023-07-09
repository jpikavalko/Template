/// @description Insert description here
// You can write your code in this editor

path_number =1;

// Set character to this point in path (in pixels)
_distance_in_path = 0;

// character initial scale
min_scale = 0.25;

// Set speed for best results. Default = 5
character_speed = 2.3;

// Player is behind obstacle
player_in_cover = place_meeting(x, y, obj_obstacle);

// Makes character follow this path
with (other) path_start(pth_path_1, 0, path_action_reverse, false);

// Total length of path for normalized character pos in path
_path_len = path_get_length(pth_path_1)

x_begin = 0;
y_begin = 0;
is_moving = false;
is_climbing = false;
last_x_dir = 1;

function move_player_a(_speed)
{
	if (path_number == 2 || path_number == 5)
	{
		_distance_in_path -= _speed;
	}else{
		_distance_in_path += _speed;
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

function change_path()
{
	
}

function next_path()
{
	path_number += 1;
	show_debug_message(path_number);
	if (path_number == 1)
	{
		with (other) path_start(pth_path_1, 0, path_action_reverse, true);
		_path_len = path_get_length(pth_path_1)
	}
	else if (path_number == 2)
	{
		with (other) path_start(pth_path_2, 0, path_action_reverse, true);
		_path_len = path_get_length(pth_path_2)
	}
		else if (path_number == 3)
	{
		with (other) path_start(pth_path_3, 0, path_action_reverse, true);
		_path_len = path_get_length(pth_path_3)
	}
		else if (path_number == 4)
	{
		with (other) path_start(pth_path_4, 0, path_action_reverse, true);
		_path_len = path_get_length(pth_path_4)
	}
		else if (path_number == 5)
	{
		with (other) path_start(pth_path_5, 0, path_action_reverse, true);
		_path_len = path_get_length(pth_path_5)
	}
	
	_distance_in_path = 0;
}
