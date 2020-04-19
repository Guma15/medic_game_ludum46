/// @description -
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



