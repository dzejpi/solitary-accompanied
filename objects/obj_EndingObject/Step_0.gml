/// @description Insert description here
// You can write your code in this editor
distanceBetweenCharacters = obj_PlayerWoman.x - obj_PlayerMan.x

if !coupleFound
{
	if distanceBetweenCharacters < 75
	{
		obj_PlayerMan.sanityLevel = 100;
		obj_PlayerWoman.sanityLevel = 100;
		
		obj_PlayerMan.thirstLevel = 100;
		obj_PlayerWoman.thirstLevel = 100;
		
		obj_GuiController.isDialogPresent = true;
		obj_GuiController.isManTalking = true;
		obj_GuiController.dialogText = "HEY! I SEE YOU!"

		coupleFound = true;
		isManControlled = true;
		obj_PlayerMan.image_xscale = 1;
		obj_PlayerWoman.image_xscale = -1;
		
		obj_PlayerMan.isControllable = false;
		obj_PlayerWoman.isControllable = false;
	}
}

// If they see each other
if coupleFound
{
	// If they are less than 5 px apart.
	if coupleTogether
	{
		endingDialogsTriggered = true;
		obj_PlayerMan.sprite_index = obj_PlayerMan.huggingAnimation;
		obj_PlayerMan.hspeed = 0;
		
		obj_PlayerWoman.sprite_index = spr_WomanIdle;
		obj_PlayerMan.hspeed = 0;
	} else
	{
		if distanceBetweenCharacters > 3
		{
			// Man walks automatically towards woman
			obj_PlayerMan.sprite_index = obj_PlayerMan.walkAnimation;
			obj_PlayerMan.hspeed = obj_PlayerMan.walkingSpeed;
			
			obj_PlayerWoman.sprite_index = obj_PlayerWoman.idleAnimation;
			obj_PlayerWoman.hspeed = 0;
		} else
		{
			// They are close together, stop walking and hug
			obj_PlayerMan.sprite_index = obj_PlayerMan.huggingAnimation;
			obj_PlayerMan.hspeed = 0;
			
			coupleTogether = true;
		}
	}
}

if endingEventCountdown > 0
{
	endingEventCountdown -= 1;
} else
{
	endingEventCountdown = 0;
}

if endingDialogsTriggered && endingEventCountdown = 0
{
	switch(endingEvent)
	{
		case 0:
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = true;
			obj_GuiController.dialogText = "I cannot believe we made it!"
			
			endingEvent += 1;
			endingEventCountdown = 300;
			obj_GuiController.dialogTimeout = endingEventCountdown;
		break;
		
		case 1:
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = false;
			obj_GuiController.dialogText = "I missed you so much!"
			
			endingEvent += 1;
			endingEventCountdown = 300;
			obj_GuiController.dialogTimeout = endingEventCountdown;
		break;
		
		case 2:
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = true;
			obj_GuiController.dialogText = "I will never leave you again!"
			
			endingEvent += 1;
			endingEventCountdown = 300;
			obj_GuiController.dialogTimeout = endingEventCountdown;
		break;
		
		case 3:
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = true;
			obj_GuiController.dialogText = "Let's rest for a while."
			
			endingEvent += 1;
			endingEventCountdown = 300;
			obj_GuiController.dialogTimeout = endingEventCountdown;
		break;
		
		case 4:
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = false;
			obj_GuiController.dialogText = "That was so scary."
			
			endingEvent += 1;
			endingEventCountdown = 300;
			obj_GuiController.dialogTimeout = endingEventCountdown;
		break;
		
		case 5:
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = true;
			obj_GuiController.dialogText = "I know, but we're safe now."
			
			endingEvent += 1;
			endingEventCountdown = 300;
			obj_GuiController.dialogTimeout = endingEventCountdown;
		break;
		
		case 6:
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = true;
			obj_GuiController.dialogText = "I am with you, so I know we will survive."
			
			endingEvent += 1;
			endingEventCountdown = 300;
			obj_GuiController.dialogTimeout = endingEventCountdown;
		break;

		case 7:
			obj_GuiController.isDialogPresent = true;
			obj_GuiController.isManTalking = true;
			obj_GuiController.dialogText = "We're Joined Together! Forever!"
		
			endingEvent += 1;
			endingEventCountdown = 300;
			obj_GuiController.dialogTimeout = endingEventCountdown;
		break;
		
		case 8:
			endingEvent += 1;
			instance_create_depth(0, 0, 0, obj_NextRoom);
		break;
	}
}