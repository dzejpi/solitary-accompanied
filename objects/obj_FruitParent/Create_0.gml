/// @description Fruit variables
name = "";
water = 10;
sanity = 10;

chance = random_range(-1, 1);
multiplier = 1;

landedOnGround = false;
beingEaten = false;
eatingCountdown = 15;

if chance >= 0
{
	multiplier = -1;
} else
{
	multiplier = 1;
}

vspeed = -0.7;
hspeed = multiplier * (1.2 + random_range(0, 0.5));