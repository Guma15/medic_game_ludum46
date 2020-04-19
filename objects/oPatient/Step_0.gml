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

