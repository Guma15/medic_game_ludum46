/// @description -
var _bullet = instance_place(x, y, oBullet);
if(_bullet != noone && !_bullet.friendly)
{
	audio_play_sound(snHit, 0, false);
	with(_bullet) instance_destroy();
	if(vigor == 0)
	{
		vigor = choose(VIT.BLEEDING, VIT.BROKEN, VIT.PAIN);
	}
	hp--;
}

if(hp <= 0)
{
	with(oPlayer)
	{
		if(carry)
		{
			sprite = sPlayerSprite;
			carry = false;
			spd = 2;			
		}
	}
	oPlayer.lose = true;
}

switch(vigor)
{
	case VIT.HEALTHY:
		bleedTime = 600;
		break;
	case VIT.BLEEDING:
			oUI.time = oUI.time - 2/room_speed;
		break;
	case VIT.BROKEN:
		with(oPlayer)
		{
			if(carry) spd = 0.5;	
		}
		break;
	case VIT.PAIN:
		if(painTime == 0)
		{
			with(oPlayer)
			{	
				if(carry)
				{
					oPatient.x = x;
					oPatient.y = y;
					sprite = sPlayerSprite;
					carry = false;
					spd = 2;
				}
			}
			painTime = irandom_range(100, 300);
		}
		painTime--;
		break;
}

depth = -bbox_bottom;