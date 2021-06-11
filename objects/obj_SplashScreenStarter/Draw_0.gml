/// @description Insert description here
// You can write your code in this editor
if displayingSplash
{
	if alphaImage < 1
	{
		alphaImage += splashSpeed;
	} else
	{
		displayingSplash = false;
		displayedSplash = true;
	}
}

if displayedSplash
{
	if alphaImage > 0
	{
		alphaImage -= splashSpeed;
	} else
	{
		room_goto(room_MainMenu);
	}
}

draw_set_alpha(alphaImage);
draw_sprite(spr_SplashDzejPiLogo, 0, room_width/2, room_height/2);

draw_set_alpha(1);