/// @description Draw GUI

// Alignments
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

spritePositionX = x + (gui_indentation * 28);
spritePositionY = y + (gui_indentation * 9);

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