sprite = sPlayerSprite;
y_frame = 1;
anim_length = 2;
anim_speed = 5;

x_frame += anim_speed/room_speed;
if(x_frame >= anim_length) {x_frame = 0;}