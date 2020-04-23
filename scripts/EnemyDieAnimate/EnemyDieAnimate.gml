sprite = sEnemyDeath;
y_frame = 0;
anim_length = 14;
anim_speed = 21;

x_frame += anim_speed/room_speed;
if(x_frame >= anim_length) instance_destroy();