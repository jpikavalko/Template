/// @description Insert description here
// You can write your code in this editor

if global.start_timer = false
{
	image_index = (max(1, image_index % 9));
}
else if image_index < 23
{
	image_index = (max(10, image_index % 23));
}
else image_index = 23;


