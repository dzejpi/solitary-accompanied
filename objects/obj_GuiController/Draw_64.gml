/// @description Draw GUI
// Alignments
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

edge = 2;

// Man part

// Water
draw_sprite(spr_GuiThirst, 0, (gui_indentation * 2), (gui_indentation * 16));

draw_rectangle_color((gui_indentation * 3), (gui_indentation * 15.5), (gui_indentation * 8), (gui_indentation * 16.5), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 15.5) + edge, (gui_indentation * 8) - edge, (gui_indentation * 16.5) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 15.5) + edge, (gui_indentation * 3) + manThirstWidth - edge, (gui_indentation * 16.5) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// Battery
draw_sprite(spr_GuiBattery, 0, (gui_indentation * 2), (gui_indentation * 14));

draw_rectangle_color((gui_indentation * 3), (gui_indentation * 13.5), (gui_indentation * 8), (gui_indentation * 14.5), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 13.5) + edge, (gui_indentation * 8) - edge, (gui_indentation * 14.5) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 3) + edge, (gui_indentation * 13.5) + edge, (gui_indentation * 3) + manBatteryWidth - edge, (gui_indentation * 14.5) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// Woman part
draw_sprite(spr_GuiThirst, 0, (gui_indentation * 30), (gui_indentation * 16));

// Water
draw_rectangle_color((gui_indentation * 29), (gui_indentation * 15.5), (gui_indentation * 24), (gui_indentation * 16.5), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 15.5) + edge, (gui_indentation * 24) + edge, (gui_indentation * 16.5) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 15.5) + edge, (gui_indentation * 29) - womanThirstWidth + edge, (gui_indentation * 16.5) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);

// Battery
draw_sprite(spr_GuiBattery, 0, (gui_indentation * 30), (gui_indentation * 14));

draw_rectangle_color((gui_indentation * 29), (gui_indentation * 13.5), (gui_indentation * 24), (gui_indentation * 14.5), thirstBarColor, thirstBarColor, thirstBarColor, thirstBarColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 13.5) + edge, (gui_indentation * 24) + edge, (gui_indentation * 14.5) - edge, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, thirstEmptyColor, false);
draw_rectangle_color((gui_indentation * 29) - edge, (gui_indentation * 13.5) + edge, (gui_indentation * 29) - womanBatteryWidth + edge, (gui_indentation * 14.5) - edge, thirstInsideColor, thirstInsideColor, thirstInsideColor, thirstInsideColor, false);
