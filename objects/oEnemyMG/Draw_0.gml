/// @description -

if(dead)
{
	sprite = sEnemyMG;	
}
else if(!shoot)
{
	sprite = sEnemyMGSprite;
	y_frame = 0;
	anim_length = 1;
	anim_speed = 0;

	if(aim == 0) {
		y_frame = 0;
	}
	else if(aim == 1){
		y_frame = 1;
	}
	else if(aim == 2) {
		y_frame = 2;
	}
}
else
{
	sprite = sEnemyMGShoot;
	y_frame = 0;
	anim_length = 3;
	anim_speed = 5;

	if(aim == 0) {
		y_frame = 0;
	}
	else if(aim == 1){
		y_frame = 1;
	}
	else if(aim == 2) {
		y_frame = 2;
	}		
}

	x_frame += anim_speed/room_speed;
	if(x_frame >= anim_length) x_frame = 0;


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

