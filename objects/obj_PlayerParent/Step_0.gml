/// @description Control behavior
if isControllable
{
	if (keyboard_check(vk_left) || keyboard_check(ord("A")))
	{
		image_xscale = -1;
		sprite_index = walkAnimation;
		hspeed = walkingSpeed * -1;
	} else if (keyboard_check(vk_right) || keyboard_check(ord("D")))
	{
		image_xscale = 1;
		sprite_index = walkAnimation;
		hspeed = walkingSpeed;
	} else
	{
		sprite_index = idleAnimation;
		hspeed = 0;
	}
}

// Walk on top of the walking ground
for(i = y - sprite_height; i < room_height; i++) 
{
	if (collision_line(x, y - sprite_height, x, i, obj_WalkingSurfaceParent, true, true) != noone) 
	{
		y = i;
		break;   
	}
}