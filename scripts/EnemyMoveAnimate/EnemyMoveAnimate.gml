	sprite = sEnemySprite;
	y_frame = 0;
	anim_length = 2;

	var _dir = point_direction(x, y, xprevious, yprevious);
	if(_dir >= 45 && _dir < 135 ) {
		y_frame = 0;
	}
	else if(_dir >= 225 && _dir < 315){
		y_frame = 1;
	}
	else if(_dir >= 315 || _dir < 45 ) {
		y_frame = 3;
		anim_length = 3;
	}
	else if(_dir >= 135 && _dir < 225) {
		y_frame = 2;
		anim_length = 3;
	}

	x_frame += anim_speed/room_speed;
	if(x_frame >= anim_length) x_frame = 0;
	
	if(_dir == 0) anim_speed = 0; else anim_speed = 5;
