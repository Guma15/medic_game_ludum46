	sprite = sEnemyShoot;
	anim_speed = 5;
	show_debug_message(anim_speed)
	if(stop && bulletReload > 20)
	{
		sprite = sEnemySprite; 
		anim_speed = 0;
	}

	
	y_frame = 0;
	anim_length = 3;
	var _dir = point_direction(oPlayer.x, oPlayer.y, x, y);
	if(_dir >= 45 && _dir < 135 ) {
		y_frame = 0;
	}
	else if(_dir >= 225 && _dir < 315){
		y_frame = 1;
	}
	else if(_dir >= 315 || _dir < 45 ) {
		y_frame = 3;
	}
	else if(_dir >= 135 && _dir < 225) {
		y_frame = 2;
	}
	x_frame += anim_speed/room_speed;
	if(x_frame >= anim_length) x_frame = 0;
	
	if(stop && bulletReload > 30) x_frame = 0;
