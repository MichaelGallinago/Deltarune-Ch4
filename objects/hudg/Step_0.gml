/// @description Insert description here
// You can write your code in this editor

	y = Textbox.y - OffsetY;
	
	if Textbox.y == 363
	{
		if !(CFight.Time % 30)
		{
			with instance_create(x+105, y+53, Stick)
			{
				Acc   = -0.0125;
				depth = other.depth - 1;
			}
			with instance_create(x-105, y+53, Stick)
			{
				Acc   = 0.0125;
				depth = other.depth - 1;
			}
		}
		
		if Textbox.State == st.select
		{
			if CInput.Right1Press
			{
				audio_play_sound(sfxMenumove, 1, 0);
				Selected++;
				if Selected == 5
				{
					Selected = 0;
				}
			}
			else if CInput.Left1Press
			{
				audio_play_sound(sfxMenumove, 1, 0);
				Selected--;
				if Selected == -1
				{
					Selected = 4;
				}
			}
		}
	}