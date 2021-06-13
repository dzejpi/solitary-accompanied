/// @description Insert description here
// You can write your code in this editor
if currentTick < 260
{
	alpha = currentTick/transitionSpeed;
	currentTick += 1;
} else
{
	alpha = 1;
}

if alpha = 1
{
	if darkScreen > 0
	{
		darkScreen -= 1;
	} else
	{
		room_goto(room_MainMenu);
	}
}