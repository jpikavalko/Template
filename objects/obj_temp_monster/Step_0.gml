is_moving = false;

if (keyboard_check(ord("D")) || keyboard_check(vk_right))
{
	_distance_in_path += character_speed;
	is_moving = true;
}
if (keyboard_check(ord("A")) || keyboard_check(vk_left))
{
	_distance_in_path -= character_speed;
	is_moving = true;
}

is_climbing = place_meeting(x, y, obj_climb_trigger);

// For testing whics speed feels good
if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
{
	character_speed += 1;
}
if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
{
	character_speed -= 1;
}

// Prints whatever to the top of the screen
if (obj_debug_text){
	obj_debug_text.text_to_draw = character_speed;
}

var _normalized_distance = ((_distance_in_path - 0) / (_path_len - 0) );

player_in_cover = place_meeting(x, y, obj_obstacle);

path_position = _normalized_distance;

image_xscale = _normalized_distance + min_scale;
image_yscale = _normalized_distance + min_scale;

if (image_xscale > 1){
	image_xscale = 1;
	image_yscale = 1;
}

draw_path(pth_path_1, x, y, false);