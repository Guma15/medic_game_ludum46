

if(timer > 0)
{
	hSpeed = lengthdir_x(moveSpeed, moveDirection);
	vSpeed = lengthdir_y(moveSpeed, moveDirection);	
	
	CollisionScript()
	//show_debug_message(moveDirection)
	
	timer--;
}
else 
{
	state = EnemyIdle;	
}