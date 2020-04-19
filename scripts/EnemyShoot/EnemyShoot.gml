switch(timer)
{
	case shootTime:
		if(bulletReload < 0)
		{
			animate = EnemyShootAnimate;
			var _dirX = lengthdir_x(10, oPlayer.x);
			var _dirY = lengthdir_y(10, oPlayer.y);
			with(instance_create_depth(x + _dirX, y - 10 + _dirY, layer_get_id("Bullet"), oBullet))
			{
				direction = point_direction(x, y, oPlayer.x, oPlayer.y);
				speed = 3;
			}
			bulletReload = irandom_range(200, 400);
		}
		break;
		
	case 0:
		if(!stop)
		{
			state = EnemyIdle;
			animate = EnemyMoveAnimate;
		}
		else timer = shootTime + 1;
		break;
}
timer--