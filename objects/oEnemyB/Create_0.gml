/// @description -

//movement variables
moveSpeed = 1;
hSpeed = 0;
vSpeed = 0;
moveDirX = -1;
moveDirY = 0;
destX = oPatient.x;
destY = oPatient.y;
close = false;

//animation stuff
x_frame = 0;
y_frame = 0;
anim_length = 2;
anim_speed = 5;
x_offset = 15;
y_offset = 22;
frame_size = 32;

//different enemy states, such as moving, shooting etc.
state = EnemyMove;
animate = EnemyMoveAnimate;
cover = noone;
sprite = sEnemySprite;
stop = false;
target = oPatient;
targetDist = 60;
shootT = oPatient;
dead = false;

//how long to remain in a state
timer = 60;
shootTime = 15;
bulletReload = 200;

//gets the collision layer
collision = layer_tilemap_get_id(layer_get_id("Col"));

moveDirection = point_direction(0, 0, moveDirX, moveDirY);