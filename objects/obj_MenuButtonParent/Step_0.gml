/// @description Check for mouse click
// If we are able to select the button
if canBeSelected && doubleClickPrevention = 0
{
	// Select if mouse is above and the player clicks
	if ((position_meeting(mouse_x, mouse_y, self)) && mouse_check_button(mb_left))
	{
		if isPressed = true
		{
			audio_play_sound(sound_Select, 10, false);
			isPressed = false;
			doubleClickPrevention = 30;
		} else
		{
			audio_play_sound(sound_Select, 10, false);
			isPressed = true;
			doubleClickPrevention = 30;
		}
	}
}

if doubleClickPrevention > 0
{
	doubleClickPrevention -= 1;
}