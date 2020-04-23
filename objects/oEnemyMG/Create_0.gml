/// @description -

enum DIR
{
	FRONT,
	LEFT,
	RIGHT,
	BACK
}

aim = DIR.FRONT;
sprite = sEnemyMGSprite;


x_frame = 0;
y_frame = 0;
anim_speed = 0;
anim_length = 0;
frame_size = 32;
x_offset = 16;
y_offset = 19;

shootTimer = 25;
shots = 6;
reload = 0;
shoot = false;
dead = false;