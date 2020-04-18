/// @Movement

hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(hInput != 0 or vInput != 0) {
	dir = point_direction(0,0,hInput,vInput);
	show_debug_message(dir)
	moveX = lengthdir_x(spd, dir);
	moveY = lengthdir_y(spd, dir);

	x += moveX;
	y += moveY;
	
	switch(dir) {
		case 0: 
			collidedEnemy = collision_line(x, y, x + 25, y, all ,false, true);
			break;
		case 45: 
			collidedEnemy = collision_line(x + 15, y - 15, x, y, all ,false, true);
			break;
		case 90: 
			collidedEnemy = collision_line(x, y, x, y - 25, all ,false, true);
			break;
		case 135: 
			collidedEnemy = collision_line(x - 15, y - 15, x, y, all ,false, true);
			break;
		case 180: 
			collidedEnemy = collision_line(x, y, x - 25, y, all ,false, true);
			break;
		case 225: 
			collidedEnemy = collision_line(x - 15, y + 15, x, y, all ,false, true);
			break;
		case 270: 
			collidedEnemy = collision_line(x, y, x, y + 25, all ,false, true);
			break;
		case 315: 
			collidedEnemy = collision_line(x + 15, y + 15, x, y, all ,false, true);
			break;
	}
	show_debug_message(collidedEnemy);
	//Set animation
	/*switch(dir) {
		case 0: sprite_index = sPlayer_right; break;
		case 45: sprite_index = sPlayer_back; break;
		case 90: sprite_index = sPlayer_back; break;
		case 135: sprite_index = sPlayer_back; break;
		case 180: sprite_index = sPlayer_left; break;
		case 225: sprite_index = sPlayer_front; break;
		case 270: sprite_index = sPlayer_front; break;
		case 315: sprite_index = sPlayer_front; break;
	}*/
	
	//collisionScriptGeneral(moveY,moveX,playerCollision)
	
} else {
	image_index = 0;
}