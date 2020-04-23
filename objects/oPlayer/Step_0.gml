/// @Movement

if(state != noone)
{
	script_execute(state);
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
		audio_play_sound(snItemPickup, 0, false);
		instance_destroy(itemID);
	}
}

var _bullet = instance_place(x, y, oBullet);
if(_bullet != noone && !_bullet.friendly)
{
	with(_bullet) instance_destroy();
	
	if(carry)
	{
		if(oPatient.vigor == 0)
		{
			oPatient.vigor = choose(VIT.BLEEDING, VIT.BROKEN, VIT.PAIN);
		}	
		oPatient.hp--;
		carry = !carry;
		oPatient.x = x;
		oPatient.y = y;
		sprite = sPlayerSprite;
		spd = 2;
	}
	else if(recover <= 0)
	{
		audio_play_sound(snHit, 0, false);
		oCamera.shakeLength = 2;
		oCamera.shakeMagnitude = 1;
		oCamera.shakeRemain = 4;
		hp--;
		recover = 60;
	}
}

if(hp <= 0)
	{
		if(medkit > 0)
		{
			hp = 2;
			medkit--;
		}
		else
		{
			lose = true;
			state = noone;
			animate = PlayerDeath;
		}
	}
if(instance_place(x, y, oGoal) && carry)
{
	win = true;		
}
recover--;
depth = -bbox_bottom;