script_execute(animate);

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

//Debug draw line

var _colX = lengthdir_x(25, dir);
var _colY = lengthdir_y(25, dir);

//draw_line(x, y, x +_colX, y + _colY);


