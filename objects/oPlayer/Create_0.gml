/// @variables
// You can write your code in this editor
randomize();
spd = 2;
sprite = sPlayerSprite;

lose = false;
win = false;
x_offset = 15;
y_offset = 26;
frame_size = 32;

x_frame = 0;
y_frame = 0;

anim_length = 2;
anim_speed = 5;

ladder = noone;
recover = 0;
hp = 5;
state = PlayerMove;
animate = PlayerMoveAnimate;
carry = false;
bandage = 0;
crutch = 0;
medkit = 0;
morphine = 0;
collision = layer_tilemap_get_id(layer_get_id("Col"));
collidedEnemy = noone;
dir = 270;
timer = 0;
shootDelay = 15;