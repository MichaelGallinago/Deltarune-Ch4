/// @description Insert description here
// You can write your code in this editor
	
	var Timer = Textbox.AttackTimer;
	if Timer <= 40
	{
		var Col = min(Timer / 40, 1) * 255;
		image_blend = make_colour_rgb(Col, Col, 255);
		image_alpha = min(Timer / 20, 1);
	}
	else
	{
		image_alpha -= 0.1;
		if !image_alpha instance_destroy(id);
	}