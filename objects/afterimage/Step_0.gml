/// @description Insert description here
// You can write your code in this editor

	if !image_alpha
	{
		instance_destroy(id);
		return;
	}
	image_alpha -= 0.04;