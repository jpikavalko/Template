is_moving = false;

if (keyboard_check(ord("D")) || keyboard_check(vk_right))
{
	move_player_a(character_speed);
}
if (keyboard_check(ord("A")) || keyboard_check(vk_left))
{
	move_player_a(-character_speed);
}

is_climbing = place_meeting(x, y, obj_climb_trigger);

// For testing whics speed feels good
//if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
//{
//	//character_speed += 1;
//	path_number++;
//	if (path_number >= 5) path_number = 5;
	
//	change_path(path_number);
	
//	_distance_in_path = 0;
//}
//if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
//{
//	path_number--;
//	if (path_number <= 1) path_number = 1;

//	change_path(path_number);
	
//	_distance_in_path = 1;
//}

var _normalized_distance = ((_distance_in_path - 0) / (_path_len - 0) );

player_in_cover = place_meeting(x, y, obj_obstacle);

path_position = _normalized_distance;

if (_normalized_distance >= 0.999){
	if (!path_number == 5)
	next_path();
}

if (obj_debug_text)
{
	obj_debug_text.text2_to_draw = _normalized_distance;
}

//if (_normalized_distance > .8) {
//	is_climbing = false;
//	var _r = ((_normalized_distance - .8) / (1. - .8));
//	image_xscale = .6 + _r * .8;
//	image_yscale = .6 + _r * .8;
//} else if (_normalized_distance > .55) {
//	is_climbing = false;
//	image_xscale = .6;
//	image_yscale = .6;
//} else if (_normalized_distance > .30) {
//	var _r = ((_normalized_distance - .30) / (.55 - .30));
//	image_xscale = .3 + _r * .3;
//	image_yscale = .3 + _r * .3;
//} else {
//	image_xscale = .3;
//	image_yscale = .3;
//}

//draw_path(pth_path_1, x, y, false);