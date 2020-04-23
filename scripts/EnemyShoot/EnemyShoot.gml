switch(timer)
{
	case shootTime:
		if(bulletReload < 0 || !stop)
		{
			var viewX = camera_get_view_width(view_camera[0])/2;
			var viewY = camera_get_view_height(view_camera[0])/2;
			if(x > oCamera.x - viewX && x < oCamera.x + viewX 
			&& y > oCamera.y - viewY && y < oCamera.y + viewY)
			{
				animate = EnemyShootAnimate;
				audio_play_sound(snEnemyShot, 0, false);
				var _dirX = sign(oPlayer.x - oPlayer.xprevious) * 32;
				var _dirY = sign(oPlayer.y - oPlayer.yprevious) * 32;
				with(instance_create_depth(x , y - 10, layer_get_id("Bullet"), oBullet))
				{
					direction = point_direction(x, y, oPlayer.x + _dirX, oPlayer.y - 10 + _dirY);
					speed = 3;
					timer = 120;
				}
			}
			bulletReload = irandom_range(200, 300);
		}
		break;
		
	case 0:
		if(!stop)
		{
			state = EnemyMove;
			animate = EnemyMoveAnimate;
		}
		else 
		{
			timer = shootTime + 1;
		}
		break;
}
timer--