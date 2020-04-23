/// @description -
friendly = false;
timer = 0;
onBuilding = false;
if(tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Buildings")), x, y))
{
	onBuilding = true;
}