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

// Collisions
if position_meeting(x, y, obj_DrinkableObjectParent)
{
	obj_GuiController.tooltipCountdown = 30;
	obj_GuiController.tooltip = "[SPACE] to drink.";
	
	if keyboard_check(vk_space)
	{
		currentlyDrinking = true;
		isControllable = false;
	}
} 

if currentlyDrinking
{
	sprite_index = drinkAnimation;
	
	if drinkingTime > 0
	{
		drinkingTime -= 1;
		
		if thirstLevel < 100
		{
			thirstLevel += 0.5;
		} else
		{
			thirstLevel = 100;
		}
	} else
	{
		drinkingTime = 120;
		currentlyDrinking = false;
		isControllable = true;
		sprite_index = idleAnimation;
	}
} else
{
	thirstLevel -= 0.01;
}

if thirstLevel <= 0
{
	thirstLevel = 0;
}