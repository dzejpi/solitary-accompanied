/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_SognarakMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

middleX = camera_get_view_width(view_camera[0]) / 2;

firstText = "Made for GMTK Game Jam 2021 by DzejPi.";
secondText = "Dedicated to Kate, my love. <3";
thirdText = "Shout-out to:";
fourthText = "Neutral Face for his support & wisdom."
fifthText = "Andy for... being Andy.";
sixthText = "All NATOCO guys.";
seventhText = "C0rn3j, Majky, Stadtpark."
eigthText = "All guys and gals in Supernova!"

firstY = 75;
secondY = 100;
thirdY = 150;
fourthY = 200;
fifthY = 225;
sixthY = 250;
seventhY = 275;
eightY = 300;

draw_set_colour(shadowTextColor);
draw_text(middleX + 2, firstY + 2, firstText);
draw_set_colour(buttonTextColor);
draw_text(middleX, firstY, firstText);

draw_set_colour(shadowTextColor);
draw_text(middleX + 2, secondY + 2, secondText);
draw_set_colour(buttonTextColor);
draw_text(middleX, secondY, secondText);

draw_set_colour(shadowTextColor);
draw_text(middleX + 2, thirdY + 2, thirdText);
draw_set_colour(buttonTextColor);
draw_text(middleX, thirdY, thirdText);

draw_set_colour(shadowTextColor);
draw_text(middleX + 2, fourthY + 2, fourthText);
draw_set_colour(buttonTextColor);
draw_text(middleX, fourthY, fourthText);

draw_set_colour(shadowTextColor);
draw_text(middleX + 2, fifthY + 2, fifthText);
draw_set_colour(buttonTextColor);
draw_text(middleX, fifthY, fifthText);

draw_set_colour(shadowTextColor);
draw_text(middleX + 2, sixthY + 2, sixthText);
draw_set_colour(buttonTextColor);
draw_text(middleX, sixthY, sixthText);

draw_set_colour(shadowTextColor);
draw_text(middleX + 2, seventhY + 2, seventhText);
draw_set_colour(buttonTextColor);
draw_text(middleX, seventhY, seventhText);

draw_set_colour(shadowTextColor);
draw_text(middleX + 2, eightY + 2, eigthText);
draw_set_colour(buttonTextColor);
draw_text(middleX, eightY, eigthText);