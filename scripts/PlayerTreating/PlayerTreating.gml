var _dirX = lengthdir_x(10, dir);
var _dirY = lengthdir_y(10, dir);
instance_create_depth(x + _dirX, y - 40 + _dirY, layer_get_id("TreatmentBar"), oTreatmentBar)

state = PlayerMove;