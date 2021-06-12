/// @description Get the proper bar widths
// Update values
manThirst = obj_PlayerMan.thirstLevel;
manBattery = obj_PlayerMan.batteryLevel;
manSanity = obj_PlayerMan.sanityLevel;

womanThirst = obj_PlayerWoman.thirstLevel;
womanBattery = obj_PlayerWoman.batteryLevel;
womanSanity = obj_PlayerWoman.sanityLevel;

manThirstWidth = ((gui_indentation * 8) - (gui_indentation * 3)) * (manThirst * 0.01);
womanThirstWidth = ((gui_indentation * 8) - (gui_indentation * 3)) * (womanThirst * 0.01);

manBatteryWidth = ((gui_indentation * 8) - (gui_indentation * 3)) * (manBattery * 0.01);
womanBatteryWidth = ((gui_indentation * 8) - (gui_indentation * 3)) * (womanBattery * 0.01);

manSanityWidth = ((gui_indentation * 8) - (gui_indentation * 3)) * (manSanity * 0.01);
womanSanityWidth = ((gui_indentation * 8) - (gui_indentation * 3)) * (womanSanity * 0.01);

if tooltipCountdown > 0
{
	tooltipCountdown -= 1;
} else
{
	tooltipCountdown = 0;
	tooltip = "";
}