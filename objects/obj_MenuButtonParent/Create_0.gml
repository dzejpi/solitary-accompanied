/// @description Button Variables
buttonText = "";
canBeSelected = true;
isPressed = false;

// Text colors
buttonTextColor = make_colour_rgb(105, 91, 89);
shadowTextColor = make_colour_rgb(166, 158, 154);

// Set sprite
sprite_index = spr_MainMenuButton;

// Stop the animation from playing and set to first sprite
image_speed = 0;
image_index = 0;

// Cheap trick to avoid double clicking
doubleClickPrevention = 0;

// Appearance at the beginning, looks cool
alphaImage = 0;
transitionSpeed = 0.05;