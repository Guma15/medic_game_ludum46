x_offset = 15;
y_offset = 21;
frame_size = 32;

x_frame = 0;
y_frame = 0;

anim_length = 4;
anim_speed = 2;
sprite_index = sPatientSprite;


hp = 3;
enum VIT
{
	HEALTHY = 0,
	BLEEDING = 1,
	PAIN = 2,
	BROKEN = 3
}

vigor = VIT.BLEEDING;
bleedTime = 600;
painTime = irandom_range(100, 300);