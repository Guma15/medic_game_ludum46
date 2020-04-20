


if(dead)
{
	sprite = sEnemyBDeath;
	y_frame = 0;
	anim_length = 14;
	anim_speed = 21;

	x_frame += anim_speed/room_speed;
	if(x_frame >= anim_length) instance_destroy();		
} else if(close)
{
	sprite = sEnemyBShoot;
	anim_speed = 5;
	if(bulletReload > 20)
	{
		sprite = sEnemyBSprite; 
		anim_speed = 0;
	}

	
	y_frame = 0;
	anim_length = 3;
	var _dir = point_direction(target.x, target.y, x, y);
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
	
	if(bulletReload > 30) x_frame = 0;
} 
else
{
	sprite = sEnemyBSprite;
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
}




var xx = x-x_offset;
var yy = y-y_offset;

draw_sprite_part(
	sprite,
	0,
	floor(x_frame)*frame_size,
	y_frame*frame_size,
	frame_size,
	frame_size,
	xx,
	yy
);
