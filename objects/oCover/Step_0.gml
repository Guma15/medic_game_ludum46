/// @description -
var _bullet = instance_place(x, y, oBullet);
if(_bullet != noone && _bullet.friendly)
{
	with(_bullet) instance_destroy();
}