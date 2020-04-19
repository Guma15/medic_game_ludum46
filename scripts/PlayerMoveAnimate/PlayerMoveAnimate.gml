if(hInput != 0 or vInput != 0) {
	//y_frame = dir/45;
	y_frame = 0;
	anim_length = 2;

	if(dir == 225 or dir == 270 or dir == 315 ) {
		y_frame = 0;
	}
	else if(dir == 135 or dir == 90 or dir == 45 ) {
		y_frame = 1;
	}
	else if(dir == 180 ) {
		y_frame = 3;
		anim_length = 3;
	}
	else if(dir == 0 ) {
		y_frame = 2;
		anim_length = 3;
	}

	x_frame += anim_speed/room_speed;
	if(x_frame >= anim_length) x_frame = 0;
} else {
	x_frame = 0.9;
}