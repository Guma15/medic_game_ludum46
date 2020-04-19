/// @description -


script_execute(state);

bulletReload--;


var _bullet = instance_place(x, y, oBullet);
if(_bullet != noone && _bullet.friendly)
{
	with(_bullet) instance_destroy();
	instance_destroy();	
}