/// @description Slowly appear
if currentTick < 260
{
	if darkScreen > 0
	{
		darkScreen -= 1;
	} else
	{
		alpha = 1 - (currentTick/transitionSpeed);
		currentTick += 1;	
	}
} else
{
	alpha = 0;
	instance_destroy();
}