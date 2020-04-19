/// @Movement

script_execute(state);

if(keyboard_check_pressed(vk_space))
{
	var _colX = lengthdir_x(25, dir);
	var _colY = lengthdir_y(25, dir);
	
	if(!carry)
	{		
		if(collision_line(x, y, x + _colX, y + _colY, oPatient, false, true))
		{
			instance_destroy(oPatient);
			sprite = sPlayerCarry;
			carry = true;
		}
	}
	else
	{
		instance_create_depth(x, y, depth, oPatient);
		sprite = sPlayerSprite;
		carry = false;
	}
}

if(keyboard_check_pressed(vk_control) && !carry)
{
	state = PlayerShoot;
	animate = PlayerShootAnimate;
	timer = shootDelay;
}

var _bullet = instance_place(x, y, oBullet);
if(_bullet != noone && !_bullet.friendly)
{
	with(_bullet) instance_destroy();
	//take damage etc.	
}