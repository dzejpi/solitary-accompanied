/// @description Set variables
isManControlled = true;
cooldownPeriod = 30;

switchCooldown = 0;

// Man controllable from the start
isManControlled = true;
obj_PlayerMan.isControllable = true;
obj_PlayerWoman.isControllable = false;
			
obj_PlayerFollowingObject.isFollowingMan = true;