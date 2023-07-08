/// @description Insert description here
// You can write your code in this editor

if (alarm[0] < 0)
{
	alarm[0] = eye_scan_interval;
}

x = lerp(x, new_x, lerp_speed_x);
y = lerp(y, new_y, lerp_speed_y);
