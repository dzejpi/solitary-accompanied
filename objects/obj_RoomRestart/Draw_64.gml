/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha);
draw_rectangle_color(x, y, 640, 360, rectangleColor, rectangleColor, rectangleColor, rectangleColor, false);

draw_set_alpha(1);

draw_set_font(font_SognarakMenu)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_color((gui_width/2) + 2, (gui_height/2) + 2 - gui_indentation, dialogText, shadowTextColor, shadowTextColor, shadowTextColor, shadowTextColor, 1);
draw_text_color((gui_width/2), (gui_height/2) - gui_indentation, dialogText, buttonTextColor, buttonTextColor, buttonTextColor, buttonTextColor, 1);	

draw_text_color((gui_width/2) + 2, (gui_height/2) + 2 + gui_indentation, dialogRestart, shadowTextColor, shadowTextColor, shadowTextColor, shadowTextColor, 1);
draw_text_color((gui_width/2), (gui_height/2) + gui_indentation, dialogRestart, buttonTextColor, buttonTextColor, buttonTextColor, buttonTextColor, 1);	