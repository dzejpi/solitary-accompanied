/// @description Set scenarios
// If I wasn’t drunk, I would just probably use script.
// I am actually disgusted by myself right now.
if countdownToNextEvent > 0
{
	countdownToNextEvent -= 1;
} else
{
	switch(currentEvent)
	{
		case 0:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "Come on, come on!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 360;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = true;
			
			countdownToNextEvent = 300;
			currentEvent += 1;
		break;
	
		case 1:
			obj_IntroGUI.isManTalking = false;
			obj_IntroGUI.dialogText = "Do something!!!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 360;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = false;
		
			countdownToNextEvent = 300;
			currentEvent += 1;
		break;
	
		case 2:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "Phew. Phew. Phew.";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 360;
	
			countdownToNextEvent = 250;
			currentEvent += 1;
		break;
	
		case 3:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "This isn't how I planned our anniversary.";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 360;
	
			countdownToNextEvent = 300;
			currentEvent += 1;
		break;
	
		case 4:
			obj_IntroGUI.isManTalking = false;
			obj_IntroGUI.dialogText = "What do we do now?";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 360;
			
			countdownToNextEvent = 250;
			currentEvent += 1;
		break;
	
		case 5:
			obj_IntroGUI.isManTalking = false;
			obj_IntroGUI.dialogText = "NO NO NO NO NO!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 250;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = false;
	
			countdownToNextEvent = 250;
			currentEvent += 1;
		break;
	
		case 6:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "I don't know, honey.";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 250;
	
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 7:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "We cannot land like this.";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
	
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 8:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "Not in this desert.";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = false;
			obj_IntroPlane.timeUntilControlRegained = 50;
			
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 9:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "COME ON! FLY!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = true;
			obj_IntroPlane.timeUntilControlRegained = 500;
	
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 10:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "It won't last much longer.";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
	
			countdownToNextEvent = 250;
			currentEvent += 1;
		break;
	
		case 11:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "You must jump, honey. Take the parachute.";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = true;
			obj_IntroPlane.timeUntilControlRegained = 500;
	
			countdownToNextEvent = 250;
			currentEvent += 1;
		break;
	
		case 12:
			obj_IntroPlane.skiddingUp = false;
		
			obj_IntroGUI.isManTalking = false;
			obj_IntroGUI.dialogText = "Are you crazy?!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 13:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "You must jump, honey. Take the parachute.";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = true;
			obj_IntroPlane.timeUntilControlRegained = 150;
			
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 14:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "Take the two-wave radio. I will find you.";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
	
			obj_IntroPlane.sprite_index = obj_IntroPlane.openPlaneSprite;
			
			obj_IntroPlane.lostControl = false;
			obj_IntroPlane.skiddingUp = true;
			obj_IntroPlane.timeUntilControlRegained = 200;
			
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 15:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "GO!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = false;
			obj_IntroPlane.timeUntilControlRegained = 200;
			
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 16:
			obj_IntroGUI.isManTalking = false;
			obj_IntroGUI.dialogText = "NOOOOOOOOO!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			obj_IntroPlane.sprite_index = obj_IntroPlane.openPlaneManOnlySprite;
			instance_create_depth(obj_IntroPlane.x - 21, obj_IntroPlane.y, 0, obj_IntroParachutingWoman);
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = true;
			obj_IntroPlane.timeUntilControlRegained = 250;
			
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 17:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "Give me a chance at least!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = false;
			obj_IntroPlane.timeUntilControlRegained = 250;
			
			countdownToNextEvent = 250;
			currentEvent += 1;
		break;
	
		case 18:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "AURGH!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = false;
			obj_IntroPlane.timeUntilControlRegained = 250;
			
			countdownToNextEvent = 200;
			currentEvent += 1;
		break;
	
		case 19:
			obj_IntroGUI.isManTalking = true;
			obj_IntroGUI.dialogText = "COME ON COME ON COME ON!";
			obj_IntroGUI.isDialogPresent = true;
			obj_IntroGUI.dialogTimeout = 300;
			
			obj_IntroPlane.lostControl = true;
			obj_IntroPlane.skiddingUp = true;
			obj_IntroPlane.timeUntilControlRegained = 250;
			
			countdownToNextEvent = 150;
			currentEvent += 1;
		break;
	
		case 20:
			instance_create_depth(0, 0, 0, obj_NextRoom);
			countdownToNextEvent = 200;
		break;
	}
}