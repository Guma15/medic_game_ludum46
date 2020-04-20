switch(timer)
{
	case shootTime:
		if(bulletReload < 0)
		{
			var viewX = camera_get_view_width(view_camera[0])/2;
			var viewY = camera_get_view_height(view_camera[0])/2;
			if(x > oCamera.x - viewX && x < oCamera.x + viewX 
			&& y > oCamera.y - viewY && y < oCamera.y + viewY)
			{
				animate = EnemyShootAnimate;
				audio_play_sound(snEnemyShot, 0, false);
				var _dirX = lengthdir_x(15, oPlayer.x);
				var _dirY = lengthdir_y(15, oPlayer.y);
				with(instance_create_depth(x + _dirX, y - 10 + _dirY, layer_get_id("Bullet"), oBullet))
				{
					direction = point_direction(x, y, oPlayer.x, oPlayer.y - 10);
					speed = 3;
					timer = 80;
				}
			}
			bulletReload = irandom_range(200, 400);
		}
		break;
		
	case 0:
		if(!stop)
		{
			state = EnemyMove;
			animate = EnemyMoveAnimate;
		}
		else timer = shootTime + 1;
		break;
}
timer--