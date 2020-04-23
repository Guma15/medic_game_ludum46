/// @description -

time = time - 1/room_speed;

if(time <= 0) oPlayer.lose = true;

if(oPlayer.lose)
{
	endTimer = endTimer - 1/room_speed;
	if(endTimer <= 0) 
	{
		time = 240;
		endTimer = 5; 
		room_restart();
	}
}

if(oPlayer.win)
{
	endTimer = endTimer - 1/room_speed;
	if(endTimer <= 0) 
	{
		endTimer = 5;
		time = 240;
		if(room = room1)
		{
			room_goto_next();
		}
		else
		{
			room_goto(room0);
		}
	}
}