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
			instance_deactivate_object(oPatient);
			sprite = sPlayerCarry;
			carry = true;
		}
	}
	else
	{
		instance_activate_object(oPatient);
		oPatient.x = x;
		oPatient.y = y;
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


itemID = instance_place(x, y, oPickup);
if( itemID != noone)
{
	item = variable_instance_get(itemID, "sprite");
	var pickUp = false;
	if(item == 0 && bandage < 2) {
		bandage++;
		pickUp = true;
	}
	if(item == 1 && morphine < 2) {
		morphine++;
		pickUp = true;
	}
	if(item == 2 && crutch < 2) {
		crutch++;
		pickUp = true;
	}
	//Destroy only if picked up.
	if (pickUp) {
		instance_destroy(itemID);
	}
}

var _bullet = instance_place(x, y, oBullet);
if(_bullet != noone && !_bullet.friendly)
{
	with(_bullet) instance_destroy();
	//take damage etc.	
}