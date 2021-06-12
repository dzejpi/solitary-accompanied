/// @description Insert description here
// You can write your code in this editor
decisionOne = random_range(0, 2)
decisionTwo = random_range(0, 2)

if decisionOne > 1
{
	sprite_index = spr_SmokeOne
} else
{
	sprite_index = spr_SmokeTwo
}

if decisionTwo > 1
{
	depth = 4
} else
{
	depth = 6
}

hspeed = -5;