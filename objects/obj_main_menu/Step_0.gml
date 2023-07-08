/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left)
{
	global.start_timer = true;
}

if obj_solid_black.image_alpha < 0.5
{
	room_goto(JukanHuone);
}

if global.start_timer = true
{
	obj_solid_black.image_alpha = obj_solid_black.image_alpha - 0.005;
}