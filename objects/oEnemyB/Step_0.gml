if(!dead)
{
	if(oPlayer.carry)
	{
		target = oPlayer;
		destX = x;
		destY = y;
		close = true;
	}
	else
	{
		target = oPatient;
		destX = oPatient.x;
		destY = oPatient.y;
		close = false;
	}

	if (distance_to_point(destX,destY) <= 80)
	{  
		close = true;
	} 
	else
	{
		close = false;
		mp_potential_step(destX,destY,1,false)
	}

	if(close && bulletReload < 0)
	{
		var viewX = camera_get_view_width(view_camera[0])/2;
		var viewY = camera_get_view_height(view_camera[0])/2;
		if(x > oCamera.x - viewX && x < oCamera.x + viewX 
		&& y > oCamera.y - viewY && y < oCamera.y + viewY)
		{
			audio_play_sound(snEnemyShot, 0, false);
			var _dirX = lengthdir_x(15, other.target.x);
			var _dirY = lengthdir_y(15, other.target.y);
			with(instance_create_depth(x + _dirX, y - 10 + _dirY, layer_get_id("Bullet"), oBullet))
			{
				direction = point_direction(x, y - 10, other.target.x, other.target.y);
				speed = 3;
				timer = 80;
			}
		}
		bulletReload = irandom_range(200, 400);	
		
	}

	var _bullet = instance_place(x, y, oBullet);
	if(_bullet != noone && _bullet.friendly && state != noone)
	{
		oCamera.shakeLength = 2;
		oCamera.shakeMagnitude = 1;
		oCamera.shakeRemain = 2;
		timer = 30;
		state = noone;
		dead = true;
		audio_play_sound(snEnemyDeath, 0, false);
		with(_bullet) instance_destroy();
	}

	depth = -bbox_bottom;

	bulletReload--;
}