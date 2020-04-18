/// @description -
moveSpeed = 1;
hSpeed = 0;
vSpeed = 0;
state = EnemyMove;
timer = 60;
collision = layer_tilemap_get_id(layer_get_id("Col"));

moveDirection = point_direction(0, 0, -1, 0);