/// @description Insert description here
// You can write your code in this editor

	LifeTime++;
	if LifeTime <= 10 
	{
		image_yscale += 0.3;
		x += 4;
	}
	else if LifeTime > 60 and LifeTime <= 80
	{
		image_yscale += 0.15;
		image_alpha -= 0.05;
		y -= 1.5;
	}
	else if LifeTime == 81
	{
		instance_destroy(id);
		return;
	}
	
	draw_set_font(CFight.FontLife);
	draw_text_transformed_colour(x, y, string(Textbox.Damage), image_xscale, image_yscale, 0, c_white, c_white, c_white, c_white, image_alpha);