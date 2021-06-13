/// @description Player switching logic
if keyboard_check_pressed(vk_tab) && !(obj_EndingObject.coupleFound)
{
	if switchCooldown = 0
	{
		if isManControlled
		{
			isManControlled = false;
			obj_PlayerMan.isControllable = false;
			obj_PlayerMan.hspeed = 0;
			obj_PlayerMan.sprite_index = obj_PlayerMan.idleAnimation;
			
			obj_PlayerWoman.isControllable = true;
			
			obj_PlayerFollowingObject.isFollowingMan = false;
			
			switchCooldown = cooldownPeriod;
		} else
		{
			isManControlled = true;
			obj_PlayerMan.isControllable = true;
			
			obj_PlayerWoman.isControllable = false;
			obj_PlayerWoman.hspeed = 0;
			obj_PlayerWoman.sprite_index = obj_PlayerWoman.idleAnimation;
			
			obj_PlayerFollowingObject.isFollowingMan = true;
			
			switchCooldown = cooldownPeriod;
		}
	}
}

if switchCooldown > 0
{
	switchCooldown -= 1;
}