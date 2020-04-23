x_frame += anim_speed/room_speed;
if(x_frame >= anim_length) x_frame = 0;


if(hp <= 0) x_frame = 0;

var xx = x-x_offset;
var yy = y-y_offset;

draw_sprite_part(
	sPatientSprite,
	0,
	floor(x_frame)*frame_size,
	y_frame*frame_size,
	frame_size,
	frame_size,
	xx,
	yy
);


if(vigor > 0 && hp > 0)
{
	draw_sprite(sStatus, vigor-1, x, y - 20);
}
