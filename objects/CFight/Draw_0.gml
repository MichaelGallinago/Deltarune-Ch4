/// @description Insert description here
// You can write your code in this editor
	
	if Time < 60
	{
		draw_sprite_ext(spr_red, 0, 0, 0, 640, 480, 0, c_white, 1 - Time / 60);
	}