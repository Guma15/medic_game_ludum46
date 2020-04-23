sprite = sPlayerShoot

switch(timer)
{
	case 15:

		var _dirX = lengthdir_x(10, dir);
		var _dirY = lengthdir_y(10, dir);
		with(instance_create_depth(x + _dirX, y - 15 + _dirY, layer_get_id("Bullet"), oBullet))
		{
			direction = other.dir;
			speed = 6;
			friendly = true;
			timer = 20;
		}
		break;
		
	case 0:
		state = PlayerMove;
		animate = PlayerMoveAnimate;
		break;
}

timer--;