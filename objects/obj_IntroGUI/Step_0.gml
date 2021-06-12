/// @description Insert description here
// You can write your code in this editor

if isDialogPresent
{
	if dialogTimeout > 0
	{
		dialogTimeout -= 1;
	} else
	{
		isDialogPresent = false;
		dialogTimeout = 120;
	}
}