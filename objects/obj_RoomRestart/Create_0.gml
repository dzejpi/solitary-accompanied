/// @description Insert description here
// You can write your code in this editor
depth = -101;

gui_width = 640;
gui_height = 360;

// Guideline that helps to slice GUI into squares
gui_indentation = 20;

transitionSpeed = 260;
darkScreen = 120;

currentTick = 0;
alpha = 0;

rectangleColor = make_colour_rgb(178, 82, 102);

// Text colors
buttonTextColor = make_colour_rgb(236, 235, 231);
shadowTextColor = make_colour_rgb(128, 123, 122);

roomrestarted = false;

if (room == room_Intro)
{
	dialogText = "Your plane fell apart! Watch its angle!"
} else
{
	dialogText = "Your Significant Other died of dehydration."
}

dialogRestart = "Press [SPACE] to restart."