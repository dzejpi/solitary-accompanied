/// @description Insert description here
// You can write your code in this editor
switch(activeTooltip)
{
	case 0:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "Walk with A/D or left/right arrows.";
		
		if keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(ord("A")) || keyboard_check(ord("D"))
		{
			activeTooltip += 1;
		}
	break;
	
	case 1:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "Press [TAB] to switch between characters.";
		
		if keyboard_check(vk_tab)
		{
			activeTooltip += 1;
		}
	break;
	
	case 2:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "Try to pick some fruit with [SPACE].";
		
		if keyboard_check(vk_space)
		{
			activeTooltip += 1;
		}
	break;
	
	case 3:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "Encourage partner with [E] (drains battery).";
		
		if keyboard_check(ord("E"))
		{
			activeTooltip += 1;
		}
	break;
	
	case 4:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "Stay hydrated by eating fruit or drinking.";
		obj_GuiController.gameTipAutoDisable = true;
	break;
	
	case 5:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "How to regain sanity?";
		obj_GuiController.gameTipAutoDisable = true;
	break;

	case 6:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "Eat, drink or stay under the tree.";
		obj_GuiController.gameTipAutoDisable = true;
	break;
	
	case 7:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "If you start losing it, call your SO.";
		obj_GuiController.gameTipAutoDisable = true;
	break;
	
	case 8:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "You will be letharhic if sanity is too low.";
		obj_GuiController.gameTipAutoDisable = true;
	break;
	
	case 9:
		obj_GuiController.gameTipEnabled = true;
		obj_GuiController.gameTip = "Now find your significant other! GO!";
		obj_GuiController.gameTipAutoDisable = true;
	break;
	
	case 10:
		obj_GuiController.gameTipEnabled = false;
		obj_GuiController.gameTip = "";
	break;
}