if (is_moving) {
		
	var _dir_x = x - x_begin;
	var _dir_y = y - y_begin;
	
	// TODO: Walk front if time
	/*if (abs(_dir_y) > abs(_dir_x) - .1) {
		// y movement
		sprite_index = spr_walk_front;
	} else {*/
		// x movement
		if (_dir_x >= 0) {
			sprite_index = spr_walk_right;
			last_x_dir = 1;
		} else {
			sprite_index = spr_walk_left;
			last_x_dir = -1;
		}
	//}	
} else {
	if (last_x_dir < 0) {
		sprite_index = spr_idel_left;
	} else {
		sprite_index = spr_idle;
	}
}
