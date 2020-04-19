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
			oPatient.x = -9999;
			oPatient.y = -9999;
			sprite = sPlayerCarry;
			carry = true;
			spd = 1;
		}
	}
	else
	{
		oPatient.x = x;
		oPatient.y = y;
		sprite = sPlayerSprite;
		carry = false;
		spd = 2;
	}
}

if(keyboard_check_pressed(ord("F")))
{
	var _colX = lengthdir_x(25, dir);
	var _colY = lengthdir_y(25, dir);
	if(collision_line(x, y, x + _colX, y + _colY, oPatient, false, true))
	{
		switch(oPatient.vigor)
		{
			case VIT.HEALTHY:
				if(medkit > 0 && oPatient.hp < 3)
				{
					medkit--;
					oPatient.hp = 3;
				}
				break;
			case VIT.BLEEDING:
				if(bandage > 0)
				{
					bandage--;
					oPatient.vigor = VIT.HEALTHY;
				}	
				break;
			case VIT.PAIN:
				if(morphine > 0)
				{
					morphine--;
					oPatient.vigor = VIT.HEALTHY;
				}	
				break;
			case VIT.BROKEN:
				if(crutch > 0)
				{
					crutch--;
					oPatient.vigor = VIT.HEALTHY;
				}	
				break;
		}
	}
}

if(keyboard_check_pressed(vk_control) && !carry)
{
	state = PlayerShoot;
	animate = PlayerShootAnimate;
	timer = shootDelay;
}


itemID = collision_point(x, y, oPickup, false, true);
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
	if(item == 3 && medkit < 2) {
		medkit++;
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
	hp--;
}

if(hp <= 0)
	{
		if(medkit > 0)
		{
			hp = 2;
			medkit--;
		}
	}