var _collision = false;

//horizontal tiles
if (tilemap_get_at_pixel(collision, x + hSpeed, y))
{
	x -= x mod TILE_SIZE;
	if(sign(hSpeed) == 1) x += TILE_SIZE - 1;
	hSpeed = 0;
	_collision = true;
}

//horizontal move commit
x += hSpeed;

//vertical tiles
if (tilemap_get_at_pixel(collision, x, y + vSpeed))
{
	y -= y mod TILE_SIZE;
	if(sign(vSpeed) == 1) y += TILE_SIZE - 1;
	vSpeed = 0;
	_collision = true;
}

//vertical move commit
y += vSpeed;



return _collision;