/// @description Insert description here
// You can write your code in this editor

// Set character to this point in path (in pixels)
_distance_in_path = 0;

// Total length of path for normalized character pos in path
_path_len = path_get_length(pth_path_1)

// character initial scale
min_scale = 0.25;

// Set speed for best results. Default = 5
character_speed = 5;

// Makes character follow this path
with (other) path_start(pth_path_1, 0, path_action_reverse, false);