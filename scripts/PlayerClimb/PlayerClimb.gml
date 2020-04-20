x = ladder.x;

y += ladder.incline;



if(ladder.incline == -1) 
{
	if(y < ladder.dest)
	{
		state = PlayerMove; 
		animate = PlayerMoveAnimate;
	}
}
else 
{
	if(y > ladder.dest)
	{
		state = PlayerMove; 
		animate = PlayerMoveAnimate;
	}
}
