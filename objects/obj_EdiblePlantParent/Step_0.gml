// Colocynthis tooltip
if place_meeting(x, y, obj_PlayerParent) && !isShaken
{
	obj_GuiController.tooltipCountdown = 15;
	obj_GuiController.tooltip = ediblePlantTooltip;
	
	if keyboard_check(vk_space)
	{
		isShaken = true;
		countdown = 30;
	}
}

if isShaken && countdown = 30
{
	chance = random_range(0, 1)
	
	// Random chance of shaking fruit down
	if chance < 0.33
	{
		// Plant gives only a limited amount of fruit
		if fruitsGrown > 0
		{
			instance_create_depth(generatedFruitX, generatedFruitY, 0, plantFruit);
			fruitsGrown -= 1;
		}
	}
}

if countdown > 0
{
	countdown -= 1;
} else
{
	countdown = 0;
	isShaken = false;
}