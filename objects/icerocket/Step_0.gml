/// @description Insert description here
// You can write your code in this editor

	if !(Textbox.AttackTimer mod 5)
	{
		instance_create(x + random_range(-2,2), y + random_range(-3,3), IceShard).depth = depth - 1;
	}
	x += dcos(image_angle) * 12;
	y -= dsin(image_angle) * 5;
	image_angle -= 2;
	
	if x >= Crazy.x + 32 instance_destroy();
	








