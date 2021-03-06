/// @description GUI Variables
gui_width = 640;
gui_height = 360;

// Guideline that helps to slice GUI into squares
gui_indentation = 20;

// Text colors
buttonTextColor = make_colour_rgb(236, 235, 231);
shadowTextColor = make_colour_rgb(128, 123, 122);

// Bar colors
thirstBarColor = make_colour_rgb(39, 137, 205);
thirstInsideColor = make_colour_rgb(66, 191, 232);
thirstEmptyColor = make_colour_rgb(201, 212, 253);
thirstBarShadowColor = make_colour_rgb(105, 91, 89);

// Default variables (overridden immediately)
manThirst = 50;
womanThirst = 50;

tooltip = "";
tooltipCountdown = 350;

avatarPositionX = x + (gui_indentation * 2);
avatarPositionY = y + (gui_indentation * 2);

// Other variables
isDialogPresent = true;
isManTalking = true;
dialogText = "What a landing! Glad I made it out alive."

dialogTimeout = 360;

gameTip = "";
gameTipEnabled = false;
gameTipAutoDisable = false;
gameTipTimeout = 320;