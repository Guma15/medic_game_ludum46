

if(timer > 0)
{
	//calculate movement speed based on direction
	hSpeed = lengthdir_x(moveSpeed, moveDirection);
	vSpeed = lengthdir_y(moveSpeed, moveDirection);	
	CollisionScript()
	
	timer--;
}
else 
{
	state = EnemyIdle;	
}