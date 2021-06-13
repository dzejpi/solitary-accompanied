/// @description Control behavior
if isControllable && !dead
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
	
	if keyboard_check(ord("E")) && encouragingTimeout = 0
	{
		encouragingTimeout = 500;
		
		if obj_MainPlayerController.isManControlled
		{
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = true;
			
			randomize();
			
			obj_GuiController.dialogText = encouragementText[ceil(random_range(0, 9))];
			obj_GuiController.dialogTimeout = 300;
			
			obj_PlayerWoman.sanityLevel += 30;
			obj_PlayerMan.batteryLevel -= 15;
		} else
		{
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = false;
			
			randomize();
			
			obj_GuiController.dialogText = encouragementText[ceil(random_range(0, 9))];
			obj_GuiController.dialogTimeout = 300
			
			obj_PlayerMan.sanityLevel += 30;
			obj_PlayerWoman.batteryLevel -= 15;
		}
	}	
}

if encouragingTimeout > 0
{
	encouragingTimeout -= 1;
} else
{
	encouragingTimeout = 0;
}

// Regain sanity if standing under date tree
if place_meeting(x, y, obj_PlantDate)
{
	sanityLevel += 0.04;
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

if place_meeting(x, y, obj_FruitParent)
{
	if keyboard_check_pressed(vk_space)
	{
		if place_meeting(x, y, obj_FruitDate)
		{
			isControllable = false;
			currentlyEating = true;
			thirstLevel += obj_FruitDate.water;
			sanityLevel += obj_FruitDate.sanity;
		}
		
		if place_meeting(x, y, obj_FruitOpuntia)
		{
			isControllable = false;
			currentlyEating = true;
			thirstLevel += obj_FruitOpuntia.water;
			sanityLevel += obj_FruitOpuntia.sanity;
		}
	}
}

if currentlyEating
{
	sprite_index = eatingAnimation;
	hspeed = 0;
	
	if eatingTime > 0
	{
		eatingTime -= 1;
	} else
	{
		eatingTime = 40;
		currentlyEating = false;
		isControllable = true;
		sprite_index = idleAnimation;
	}
}

if currentlyDrinking
{
	sprite_index = drinkAnimation;
	hspeed = 0;
	
	if drinkingTime > 0
	{
		drinkingTime -= 1;
		
		if thirstLevel < 100
		{
			thirstLevel += 0.5;
			sanityLevel += 0.2;
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

if sanityLevel > 0
{
	if sanityLevel >= 100
	{
		sanityLevel = 100;
	} else
	{
		sanityLevel -= 0.02;
	}
}

if thirstLevel >= 100
{
	thirstLevel = 100;
}

if thirstLevel <= 0
{
	if !dead
	{
		dead = true;
		sprite_index = dyingAnimation;
		instance_create_depth(0, 0, 0, obj_RoomRestart);
	}
}

if batteryLevel > 100
{
	batteryLevel = 100;
} else if batteryLevel <= 0
{
	batteryLevel = 0;
} else
{
	batteryLevel -= 0.001;
}

if thirstLevel <= 0
{
	thirstLevel = 0;
}

if dead
{
	if image_index = 7
	{
		image_speed = 0;
	}
}