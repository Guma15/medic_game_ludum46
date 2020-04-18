var _collision = false;

//horizontal tiles
//if there is a collision at position we want to move to
if (tilemap_get_at_pixel(collision, x + hSpeed, y))
{
	//put us right infront of the tile(on the left)
	x -= x mod TILE_SIZE;
	//if we're moving left, put us on the other side instead
	if(sign(hSpeed) == 1) x += TILE_SIZE - 1;
	//stop movement
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