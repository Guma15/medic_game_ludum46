/// @description -
var _bullet = instance_place(x, y, oBullet);
if(_bullet != noone && !_bullet.friendly)
{
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
	instance_destroy();
}

switch(vigor)
{
	case VIT.HEALTHY:
		bleedTime = 600;
		break;
	case VIT.BLEEDING:
		if(bleedTime <= 0)
		{
			hp--
			bleedTime = 600;
		}
		bleedTime--;
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