/// @description Draw GUI

// Alignments
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

spritePositionX = x + (gui_indentation * 28);
spritePositionY = y + (gui_indentation * 9);

avatarPositionX = x + (gui_indentation * 2);
avatarPositionY = y + (gui_indentation * 2);

if obj_IntroPlane.lostControl
{
	if obj_IntroPlane.skiddingUp
	{
		if keyboard_check(vk_down) || keyboard_check(ord("S"))
		{
			draw_sprite(spr_KeyboardHelpedDown, 1, spritePositionX, spritePositionY);
		} else
		{
			draw_sprite(spr_KeyboardHelpedDown, 0, spritePositionX, spritePositionY);
		}
	} else
	{
		if keyboard_check(vk_up) || keyboard_check(ord("W"))
		{
			draw_sprite(spr_KeyboardHelpedUp, 1, spritePositionX, spritePositionY);
		} else
		{
			draw_sprite(spr_KeyboardHelpedUp, 0, spritePositionX, spritePositionY);
		}
	}
}

if isDialogPresent
{
	if isManTalking
	{
		draw_sprite(spr_GuiMan, 0, avatarPositionX, avatarPositionY);
	} else
	{
		//draw_sprite(spr_GuiWoman, 0, avatarPositionX, avatarPositionY);
		draw_sprite_ext(spr_GuiWoman, 0, avatarPositionX, avatarPositionY, -1, 1, 0, c_white, 1);
	}
	
	draw_set_halign(fa_left);
	
	draw_set_font(font_SognarakMenu);
	draw_text_color(avatarPositionX + gui_indentation + 2, avatarPositionY + 2, dialogText, shadowTextColor, shadowTextColor, shadowTextColor, shadowTextColor, 1);
	draw_text_color(avatarPositionX + gui_indentation, avatarPositionY, dialogText, buttonTextColor, buttonTextColor, buttonTextColor, buttonTextColor, 1);	
}