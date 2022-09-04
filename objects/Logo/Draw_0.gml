/// @description Insert description here
// You can write your code in this editor
	
	if !Continue and keyboard_check_pressed(vk_anykey)
	{
		if Delay > -75
		{
			Delay = -75;
			Height = 0;
			audio_stop_all();
		}
		else
		{
			Continue = true;
		}
		audio_play_sound(sfxTensionhorn, 1, 0);
	}

	if !(--Delay) and (--Height)
	{
		if Height == 15 
		{
			audio_play_sound(sfxAppear, 1, 0);
		}
		Delay = 5;
	}
	
	if Height
	{
		var Alpha = 1;
		if Height == 16
		{ 
			Alpha = (120 - Delay) / 60;
		}
		draw_sprite_part_ext(sprite_index, 0, 0, Height, sprite_width, 17 - Height, x, y + Height * 4, 4, 4, c_white, Alpha == 1);
		draw_sprite_part_ext(sprite_index, 0, 0, Height, sprite_width, 1, x, y + Height * 4 - 236, 4, 240, c_white, Alpha);
	}
	else
	{
		draw_self();
	}
	
	if Delay <= -30
	{
		if Delay == -30
		{
			audio_play_sound(sfxSpearrise, 1, 0);
		}
		var ChSize = max(4, 49 + Delay);
		draw_sprite_ext(spr_chapter, 0, x + sprite_width / 2, y + sprite_height + 44, ChSize, ChSize, min(-Delay - 45, 0), c_white, 1);
	}
	
	if !Continue
	{
		if Delay < -75
		{
			Delay = -75;
		}
	}
	else
	{
		var Size = 0;
		if Delay < -75
		{
			Size = 4 - (Delay + 75) * 6;
			draw_sprite_ext(spr_heart, 0, x + 212, y + 40, Size, Size, -Delay - 75, c_white, 1);
		}
		if Size > 450
		{
			room_goto(Fight);
		}
	}