/// @description Insert description here
// You can write your code in this editor

	repeat (3)
	{
		instance_create(x + random_range(-2,2), y + random_range(-3,3), IceShard).depth = depth - 1;
	}