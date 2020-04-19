

if (distance_to_point(destX,destY) <= 5)
{  
    do
    {
        destX = random(room_width)
        destY = random(room_height)
    }
    until(!place_meeting(destX,destY,oWall))
	state = EnemyIdle;
    //this is so the target destination isn't inside a soling block
} 

if(cover != noone)
{
	destX = cover.x;
	destY = cover.y;
}
else
{
	cover = collision_circle(x, y, 128, oCoverSpot, false, true)	
}

if(cover == noone || distance_to_object(cover) > 1)
{
	mp_potential_step(destX,destY,1,false)
}

