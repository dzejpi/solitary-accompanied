/// @description Draw properly
// Font is off by 1px in HTML5 for some reason
fontIndentation = -1;

// Draw as selected if mouse is hovering above or the button is selected
if canBeSelected
{
	if (position_meeting(mouse_x, mouse_y, id) || isPressed)
	{
		draw_sprite(spr_MainMenuButton, 1, x, y - fontIndentation);
	} else
	{
		draw_sprite(spr_MainMenuButton, 0, x, y - fontIndentation);
	}
} else
{
	draw_sprite(spr_MainMenuButton, 2, x, y - fontIndentation);
}

// Alignment to the center
draw_set_font(font_SognarakMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Shadow
draw_set_colour(shadowTextColor);
draw_text(x + 1, y + 1, buttonText);

// Button text
draw_set_colour(buttonTextColor);
draw_text(x, y, buttonText);
