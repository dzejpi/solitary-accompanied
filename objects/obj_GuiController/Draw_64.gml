/// @description Draw GUI

// Man part
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_sprite(spr_GuiThirst, 0, (gui_indentation * 2), (gui_indentation * 16));

draw_rectangle_color((gui_indentation * 3), (gui_indentation * 15.5), (gui_indentation * 8), (gui_indentation * 16.5), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 3) + 1, (gui_indentation * 15.5) + 1, (gui_indentation * 8) - 1, (gui_indentation * 16.5) - 1, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 3) + 1, (gui_indentation * 15.5) + 1, (gui_indentation * 3) + manThirstWidth - 1, (gui_indentation * 16.5) - 1, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// Woman part
draw_sprite(spr_GuiThirst, 0, (gui_indentation * 30), (gui_indentation * 16));

draw_rectangle_color((gui_indentation * 29), (gui_indentation * 15.5), (gui_indentation * 24), (gui_indentation * 16.5), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 29) - 1, (gui_indentation * 15.5) + 1, (gui_indentation * 24) + 1, (gui_indentation * 16.5) - 1, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 29) - 1, (gui_indentation * 15.5) + 1, (gui_indentation * 29) - womanThirstWidth + 1, (gui_indentation * 16.5) - 1, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);