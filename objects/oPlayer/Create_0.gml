/// @variables
// You can write your code in this editor

spd = 1;
sprite = sPlayerSprite;

x_offset = 15;
y_offset = 22;
frame_size = 32;

x_frame = 0;
y_frame = 0;

anim_length = 2;
anim_speed = 5;

state = PlayerMove;
animate = PlayerMoveAnimate;
carry = false;
collision = layer_tilemap_get_id(layer_get_id("Col"));
collidedEnemy = noone;
dir = 270;
timer = 0;
shootDelay = 15;
//playerCollision = layer_tilemap_get_id(layer_get_id("Col"));