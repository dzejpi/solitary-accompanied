/// @description Draw GUI
// Alignments
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

edge = 2;

// MAN PART
// Face
if obj_MainPlayerController.isManControlled
{
	//draw_sprite(spr_GuiMan, 0, (gui_indentation * 1.5), (gui_indentation * 1.5));
	draw_sprite(spr_GuiMan, 0, (gui_indentation * 2.5), (gui_indentation * 11.5));
	
	if obj_PlayerWoman.sanityLevel <= 15
	{
		draw_sprite(spr_Encourage, 0, (gui_indentation * 4.5), (gui_indentation * 11.5));
	}
} else
{
	//draw_sprite(spr_GuiMan, 1, (gui_indentation * 1.5), (gui_indentation * 1.5));
	draw_sprite(spr_GuiMan, 1, (gui_indentation * 2.5), (gui_indentation * 11.5));
}

// Sanity
draw_sprite(spr_GuiSanity, 0, (gui_indentation * 2), (gui_indentation * 13.5));

draw_rectangle_color((gui_indentation * 3), (gui_indentation * 13), (gui_indentation * 8), (gui_indentation * 14), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 13) + edge, (gui_indentation * 8) - edge, (gui_indentation * 14) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 13) + edge, (gui_indentation * 3) + manSanityWidth - edge, (gui_indentation * 14) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// Battery
draw_sprite(spr_GuiBattery, 0, (gui_indentation * 2), (gui_indentation * 15));

draw_rectangle_color((gui_indentation * 3), (gui_indentation * 14.5), (gui_indentation * 8), (gui_indentation * 15.5), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 14.5) + edge, (gui_indentation * 8) - edge, (gui_indentation * 15.5) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 14.5) + edge, (gui_indentation * 3) + manBatteryWidth - edge, (gui_indentation * 15.5) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// Water
draw_sprite(spr_GuiThirst, 0, (gui_indentation * 2), (gui_indentation * 16.5));

draw_rectangle_color((gui_indentation * 3), (gui_indentation * 16), (gui_indentation * 8), (gui_indentation * 17), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 16) + edge, (gui_indentation * 8) - edge, (gui_indentation * 17) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 16) + edge, (gui_indentation * 3) + manThirstWidth - edge, (gui_indentation * 17) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// WOMAN PART
// Face
if obj_MainPlayerController.isManControlled
{
	//draw_sprite(spr_GuiWoman, 1, (gui_indentation * 30.5), (gui_indentation * 1.5));
	draw_sprite(spr_GuiWoman, 1, (gui_indentation * 29.5), (gui_indentation * 11.5));	
} else
{
	//draw_sprite(spr_GuiWoman, 2, (gui_indentation * 30.5), (gui_indentation * 1.5));
	draw_sprite(spr_GuiWoman, 0, (gui_indentation * 29.5), (gui_indentation * 11.5));
	
	if obj_PlayerMan.sanityLevel <= 15
	{
		draw_sprite(spr_Encourage, 0, (gui_indentation * 27.5), (gui_indentation * 11.5));
	}
}

// Sanity
draw_sprite_ext(spr_GuiSanity, 0, (gui_indentation * 30), (gui_indentation * 13.5), -1, 1, 0, c_white, 1);

draw_rectangle_color((gui_indentation * 29), (gui_indentation * 13), (gui_indentation * 24), (gui_indentation * 14), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 13) + edge, (gui_indentation * 24) + edge, (gui_indentation * 14) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 13) + edge, (gui_indentation * 29) - womanSanityWidth + edge, (gui_indentation * 14) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// Battery
draw_sprite_ext(spr_GuiBattery, 0, (gui_indentation * 30), (gui_indentation * 15), -1, 1, 0, c_white, 1);

draw_rectangle_color((gui_indentation * 29), (gui_indentation * 14.5), (gui_indentation * 24), (gui_indentation * 15.5), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 14.5) + edge, (gui_indentation * 24) + edge, (gui_indentation * 15.5) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 14.5) + edge, (gui_indentation * 29) - womanBatteryWidth + edge, (gui_indentation * 15.5) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// Water
draw_sprite_ext(spr_GuiThirst, 0, (gui_indentation * 30), (gui_indentation * 16.5), -1, 1, 0, c_white, 1);

draw_rectangle_color((gui_indentation * 29), (gui_indentation * 16), (gui_indentation * 24), (gui_indentation * 17), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 16) + edge, (gui_indentation * 24) + edge, (gui_indentation * 17) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 16) + edge, (gui_indentation * 29) - womanThirstWidth + edge, (gui_indentation * 17) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// TOOLTIP
draw_set_font(font_SognarakMenu);

// If the dialog is present, shift tooltip down.
if isDialogPresent
{
	draw_text_color((gui_width/2) + 2, (gui_indentation * 4) + 2, tooltip, shadowTextColor, shadowTextColor, shadowTextColor, shadowTextColor, 1);
	draw_text_color((gui_width/2), (gui_indentation * 4), tooltip, buttonTextColor, buttonTextColor, buttonTextColor, buttonTextColor, 1);
} else
{
	draw_text_color((gui_width/2) + 2, (gui_indentation * 2) + 2, tooltip, shadowTextColor, shadowTextColor, shadowTextColor, shadowTextColor, 1);
	draw_text_color((gui_width/2), (gui_indentation * 2), tooltip, buttonTextColor, buttonTextColor, buttonTextColor, buttonTextColor, 1);
}

// Game tips
if gameTipEnabled
{
	draw_text_color((gui_width/2) + 2, (gui_height/2) + 2, gameTip, shadowTextColor, shadowTextColor, shadowTextColor, shadowTextColor, 1);
	draw_text_color((gui_width/2), (gui_height/2), gameTip, buttonTextColor, buttonTextColor, buttonTextColor, buttonTextColor, 1);
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