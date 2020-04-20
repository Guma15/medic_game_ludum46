

if (distance_to_point(destX,destY) <= 5)
{  
    do
    {
		var viewX = camera_get_view_width(view_camera[0])/2;
		var viewY = camera_get_view_height(view_camera[0])/2;
        destX = irandom_range(oCamera.x - viewX, oCamera.x + viewX);
        destY = irandom_range(oCamera.y - viewY, oCamera.y + viewY);
    }
    until(!place_meeting(destX,destY,pWall))

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
