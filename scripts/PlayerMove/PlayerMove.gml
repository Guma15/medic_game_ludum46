hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);

if(carry) sprite = sPlayerCarry else sprite = sPlayerSprite;
if(hInput != 0 or vInput != 0) {
	dir = point_direction(0,0,hInput,vInput);
	//show_debug_message(dir)
	
	moveX = lengthdir_x(spd, dir);
	moveY = lengthdir_y(spd, dir);
	collisionScriptGeneral(moveY, moveX);
	
} else {
	image_index = 0;
}

if(keyboard_check_pressed(ord("X")))
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
			spd = 0.75;
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
	
	ladder = collision_line(x, y, x + _colX, y + _colY, oLadder, false, true)
	if(ladder != noone && !carry)	
	{
		state = PlayerClimb;
		animate = PlayerClimbAnimate;
	}

	

}

if(keyboard_check_pressed(ord("C")))
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
					audio_play_sound(snHeal, 0, false);
					medkit--;
					oPatient.hp = 3;
				}
				break;
			case VIT.BLEEDING:
				if(bandage > 0)
				{
					audio_play_sound(snHeal, 0, false);
					bandage--;
					oPatient.vigor = VIT.HEALTHY;
				}	
				break;
			case VIT.PAIN:
				if(morphine > 0)
				{
					audio_play_sound(snHeal, 0, false);
					morphine--;
					oPatient.vigor = VIT.HEALTHY;
				}	
				break;
			case VIT.BROKEN:
				if(crutch > 0)
				{
					audio_play_sound(snHeal, 0, false);
					crutch--;
					oPatient.vigor = VIT.HEALTHY;
				}	
				break;
		}
	}
}

if(keyboard_check_pressed(ord("Z")) && !carry)
{
	audio_play_sound(snShoot, 0, false);
	state = PlayerShoot;
	animate = PlayerShootAnimate;
	timer = shootDelay;
}