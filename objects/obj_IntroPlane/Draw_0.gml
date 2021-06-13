/// @description Insert description here
// You can write your code in this editor
if lostControl
{
	if skiddingUp
	{
		image_angle += 0.35;
	} else
	{
		image_angle -= 0.35;
	}
}

if keyboard_check(vk_up) || keyboard_check(ord("W"))
{
	if planeControllable
	{
		image_angle += 0.5; 
	}
}

if keyboard_check(vk_down) || keyboard_check(ord("S"))
{
	if planeControllable
	{
		image_angle -= 0.5;
	}
}

draw_self();