/// @description -
var viewY = camera_get_view_height(view_camera[0])/2;



if(oPlayer.y - viewY - 150 < y)
{
	instance_create_layer(x, y, layer_get_id("Instances"), spawn)
	instance_destroy();
}