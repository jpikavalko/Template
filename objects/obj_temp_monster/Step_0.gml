if keyboard_check(vk_up)
{
	image_xscale += 0.1;
    image_yscale = image_xscale;
}

if keyboard_check(vk_right)
{
	x = x+1;
}

if keyboard_check(vk_left)
{
	x = x-1;
}
//if keyboard_check(vk_down)



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
