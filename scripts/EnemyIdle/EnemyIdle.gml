state = choose(EnemyMove, EnemyShoot);

if(state == EnemyMove)
{
	timer = 60;
	moveDirection = point_direction(0, 0, irandom_range(-1, 1), irandom_range(-1, 1));
}
else
{
	timer = 60;	
}