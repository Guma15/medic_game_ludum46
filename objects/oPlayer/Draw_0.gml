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

var xx = x-x_offset;
var yy = y-y_offset;

draw_sprite_part(
	sPlayerSprite,
	0,
	floor(x_frame)*frame_size,
	y_frame*frame_size,
	frame_size,
	frame_size,
	xx,
	yy
);

//Debug draw line
switch(dir) {
	case 0: 
		draw_line(x, y, x + 25, y);
		break;
	case 45: 
		draw_line(x + 15, y - 15, x, y);
		break;
	case 90: 
		draw_line(x, y, x, y - 25);
		break;
	case 135: 
		draw_line(x - 15, y - 15, x, y);
		break;
	case 180: 
		draw_line(x, y, x - 25, y);
		break;
	case 225: 
		draw_line(x - 15, y + 15, x, y);
		break;
	case 270: 
		draw_line(x, y, x, y + 25);
		break;
	case 315: 
		draw_line(x + 15, y + 15, x, y);
		break;
}

