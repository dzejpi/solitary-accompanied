/// @description Set tooltip
if position_meeting(x, y, obj_PlayerParent)
{
	obj_GuiController.tooltipCountdown = 30;
	obj_GuiController.tooltip = "[SPACE] Eat " + name + ".";
	
	if keyboard_check(vk_space)
	{
		
	}
}