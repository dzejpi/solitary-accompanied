/// @description Get the proper bar widths
// Update values
manThirst = obj_PlayerMan.thirstLevel;
manBattery = obj_PlayerMan.batteryLevel;
womanThirst = obj_PlayerWoman.thirstLevel;
womanBattery = obj_PlayerWoman.batteryLevel;

manThirstWidth = ((gui_indentation * 8) - (gui_indentation * 3)) * (manThirst * 0.01);
womanThirstWidth = ((gui_indentation * 8) - (gui_indentation * 3)) * (womanThirst * 0.01);
