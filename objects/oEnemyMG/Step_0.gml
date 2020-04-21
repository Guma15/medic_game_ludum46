/// @description -
if(!dead)
	{
	var _dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	if(_dir >= 290 && _dir < 340)
	{
		aim = DIR.RIGHT;
	}
	else if(_dir <= 250 && _dir > 200)
	{
		aim = DIR.LEFT;	
	}
	else if (_dir < 290 && _dir >= 250)
	{
		aim = DIR.FRONT;	
	}
	else
	{
		aim = DIR.BACK;	
	}

	if(abs(x - oPlayer.x) > 100)
	{
		aim = DIR.BACK;	
	}


	var viewX = camera_get_view_width(view_camera[0])/2;
	var viewY = camera_get_view_height(view_camera[0])/2;
	if(x > oCamera.x - viewX && x < oCamera.x + viewX 
	&& y > oCamera.y - viewY && y < oCamera.y + viewY
	&& aim != DIR.BACK)
	{
		if(reload <= 0)
		{
			if(shootTimer <= 0)
			{
				shoot = false;
				if(shots <= 0)
				{
					shots = 6;
					reload = 120
				}
				else
				{
					shoot = true;
					audio_play_sound(snEnemyShot, 0, false);
					var _dirX = lengthdir_x(15, oPlayer.x);
					var _dirY = lengthdir_y(15, oPlayer.y);
					with(instance_create_depth(x , y - 10, layer_get_id("Bullet"), oBullet))
					{
						direction = point_direction(x, y, oPlayer.x + irandom_range(-20, 20), oPlayer.y - 10 + irandom_range(-20, 20));
						speed = 3;
						timer = 80;
					}		
					shootTimer = 25;
					shots--;
				}
			}
			else
			{
				shootTimer--;	
			}
		}	
		else
		{
			reload--;	
		}
	}
	else
	{
		shots = 6;
		shoot = false;
		shootTimer = 35;	
	}
	show_debug_message(shootTimer)

	var _bullet = instance_place(x, y, oBullet);
	if(_bullet != noone && _bullet.friendly && dead = false)
	{
		oCamera.shakeLength = 2;
		oCamera.shakeMagnitude = 1;
		oCamera.shakeRemain = 2;
		dead = true;
		audio_play_sound(snEnemyDeath, 0, false);
		with(_bullet) instance_destroy();
	}
}	