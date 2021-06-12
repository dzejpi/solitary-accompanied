/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_down)
{
	image_angle -= 0.5;
}

if keyboard_check(vk_up)
{
	image_angle += 0.5; 
}

draw_self();