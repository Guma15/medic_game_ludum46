/// @description -

//movement variables
moveSpeed = 1;
hSpeed = 0;
vSpeed = 0;

//different enemy states, such as moving, shooting etc.
state = EnemyMove;

//how long to remain in a state
timer = 60;

//gets the collision layer
collision = layer_tilemap_get_id(layer_get_id("Col"));

moveDirection = point_direction(0, 0, -1, 0);