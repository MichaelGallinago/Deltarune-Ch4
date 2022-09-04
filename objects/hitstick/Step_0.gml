/// @description Insert description here
// You can write your code in this editor
	
	if x < 48 or image_alpha == 0
	{
		instance_destroy(id);
		return;
	}
	
	if !Textbox.Pressed and CInput.ZPress
	{ 
		Textbox.Pressed = true;
		audio_play_sound(sfxLazC, 1, 0);
	}
	
	if Textbox.Pressed
	{
		if x > 64 and x < 80
		{
			image_blend = c_yellow;
		}
		hspeed = 0;
		image_xscale += 0.05;
		image_yscale += 0.05;
		image_alpha  -= 0.05;
	}