if (is_climbing) {
	sprite_index = spr_climb;
} else {
	if (is_moving) {
		
		var _dir_x = x - x_begin;
		var _dir_y = y - y_begin;
		
		if (abs(_dir_y) > abs(_dir_x) - .1) {
			// y movement
			sprite_index = spr_walk_front;
		} else {
			// x movement
			if (_dir_x > 0) {
				sprite_index = spr_walk_right;
			} else {
				sprite_index = spr_walk_left;
			}
		}	
	} else {
		sprite_index = spr_idle;
	}
}
