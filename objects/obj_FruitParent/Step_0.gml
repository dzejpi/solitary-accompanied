/// @description Set tooltip
if place_meeting(x, y, obj_PlayerParent)
{
	obj_GuiController.tooltipCountdown = 30;
	obj_GuiController.tooltip = "[SPACE] Eat " + name + ".";
	
	if keyboard_check(vk_space)
	{
		
	}
}

if place_meeting(x, y + 3, obj_WalkingSurfaceParent)
{
	vspeed = 0;
	hspeed = 0;
}

if vspeed < 0
{
	vspeed += 0.1;
} else
{
	if !place_meeting(x, y + 3, obj_WalkingSurfaceParent)
	{
		vspeed += 0.1;
	} else
	{
		vspeed = 0;
		hspeed = 0;
	}
}

if hspeed < 0
{
	hspeed += 0.01;
} else if hspeed > 0
{
	hspeed -= 0.01
}

// Stay on the ground
for(i = y - sprite_height; i < room_height; i++) 
{
	if (collision_line(x, y - sprite_height, x, i, obj_WalkingSurfaceParent, true, true) != noone) 
	{
		//vspeed = 0;
		//hspeed = 0;
		//y = i;
		//break;
	}
}