/// @description Insert description here
// You can write your code in this 




if (keyboard_check(ord("D")))
{
	_distance_in_path += 5;
}
if (keyboard_check(ord("A")))
{
	_distance_in_path -= 5;
}

var _normalized_distance = ((_distance_in_path - 0) / (_path_len - 0) );

path_position = _normalized_distance;