/// @description -
timer--;	
if(timer < 0) instance_destroy();

if(place_meeting(x,y, oWall) && !onBuilding)
{
	instance_destroy();	
}


if(place_meeting(x,y, oBarrel))
{
	instance_destroy();	
}
