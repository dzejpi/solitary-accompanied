/// @description Insert description here
// You can write your code in this editor
if smokeCountdown > 0
{
	smokeCountdown -= 1;
} else
{
	smokeCountdown = random_range(1, 5);
	//instance_create_depth(x + 33, y + 8, 0, obj_Smoke);
	instance_create_depth(x + 8, y, 0, obj_Smoke);
}

if lostControl
{
	if timeUntilControlRegained > 0
	{
		timeUntilControlRegained -= 1;
	} else
	{
		timeUntilControlRegained = 300;
		lostControl = false;
	}
}

if abs(image_angle) > 37
{
	planeControllable = false;
	sprite_index = spr_PlaneFallingApart;
	
	hspeed = -4;
}