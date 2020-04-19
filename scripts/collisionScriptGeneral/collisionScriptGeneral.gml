/// @description collisionScriptGeneral(vspeed,hspeed,collision)
/// @param vspeed
/// @param hspeed
/// @param pcol

var v_speed = argument0;
var h_speed = argument1;

var _collision = false;

//horizontal tiles
if (instance_position(x + h_speed, y, oWall))
{
	while(!instance_position(x + sign(h_speed), y, oWall))
	{
		x += sign(h_speed);	
	}
	h_speed = 0;
}

//horizontal move commit
x += h_speed;

//vertical tiles
if (instance_position(x, y  + v_speed, oWall))
{
	while(!instance_position(x, y+ sign(v_speed), oWall))
	{
		y += sign(v_speed);	
	}
	v_speed = 0;
}

//vertical move commit
y += v_speed;



return _collision;