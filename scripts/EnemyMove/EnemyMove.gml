var viewX = camera_get_view_width(view_camera[0])/2;
var viewY = camera_get_view_height(view_camera[0])/2;
if(x > oCamera.x - viewX && x < oCamera.x + viewX 
&& y > oCamera.y - viewY && y < oCamera.y + viewY)
{
	inCamera = true;	
}
else
{
	inCamera = false	
}

if (distance_to_point(destX,destY) <= 5)
{  
    do
    {
        destX = irandom_range(oCamera.x - viewX, oCamera.x + viewX);
        destY = irandom_range(oCamera.y - viewY, oCamera.y + viewY);
		show_debug_message("destX" + string(x) + " " + string(destX))
		show_debug_message("destY" + string(y) + " " + string(destY))
		show_debug_message(inCamera);
    }
    until(!place_meeting(destX,destY,pWall) 
	   && !place_meeting(destX, destY, oRoof)
	   && (!inCamera || distance_to_point(destX, destY) < 256))

	state = EnemyShoot;
	timer = shootTime;
} 

if(cover != noone)
{
	destX = cover.x;
	destY = cover.y;
}
else
{
		var _c = collision_circle(x, y, 128, oCoverSpot, false, true)
		if(_c != noone)
		{
			if(!_c.occupied)
			{
				_c.occupied = true;
				cover = _c;
			}
		}
}


if(cover == noone || distance_to_object(cover) > targetDist )
{
	mp_potential_step(destX,destY,1,false)
}
else 
{
	stop = true;
	state = EnemyShoot;
	animate = EnemyShootAnimate;
}
