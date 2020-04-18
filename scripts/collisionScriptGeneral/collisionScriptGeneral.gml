/// @description collisionScriptGeneral(vspeed,hspeed,collision)
/// @param vspeed
/// @param hspeed
/// @param pcol

var v_speed = argument0;
var h_speed = argument1;
var p_col = argument2;

var _collision = false;

//horizontal tiles
if (tilemap_get_at_pixel(p_col, x + h_speed, y))
{
	x -= x mod TILE_SIZE;
	if(sign(h_speed) == 1) x += TILE_SIZE - 1;
	h_speed = 0;
	_collision = true;
}

//horizontal move commit
x += h_speed;

//vertical tiles
if (tilemap_get_at_pixel(p_col, x, y + v_speed))
{
	y -= y mod TILE_SIZE;
	if(sign(v_speed) == 1) y += TILE_SIZE - 1;
	v_speed = 0;
	_collision = true;
}

//vertical move commit
y += v_speed;



return _collision;