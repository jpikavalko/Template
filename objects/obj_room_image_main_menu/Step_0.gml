/// @description Insert description here
// You can write your code in this editor

if global.start_timer = false
{
	image_index = (max(1, image_index % 3));
}
else if image_index < 17
{
	image_index = (max(4, image_index % 17));
}
else image_index = 17;


