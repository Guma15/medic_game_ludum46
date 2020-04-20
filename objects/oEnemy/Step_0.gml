/// @description -

if(state != noone) script_execute(state);

bulletReload--;


var _bullet = instance_place(x, y, oBullet);
if(_bullet != noone && _bullet.friendly && state != noone)
{
	oCamera.shakeLength = 2;
	oCamera.shakeMagnitude = 1;
	oCamera.shakeRemain = 2;
	timer = 30;
	state = noone;
	animate = EnemyDieAnimate;
	audio_play_sound(snEnemyDeath, 0, false);
	with(_bullet) instance_destroy();
}

depth = -bbox_bottom;