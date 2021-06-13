/// @description Insert description here
// You can write your code in this editor
if countdown > 0
{
	countdown -= 1;
} else
{
	if !gameEnded
	{
		instance_create_depth(0, 0, 0, obj_ToMainMenu);
		gameEnded = true;
	}
}