/// @description Insert description here
// You can write your code in this editor

	draw_self();
	
	if y == 363
	{
		switch State
		{
			case st.select:
			case st.spare:
			case st.action:
				draw_set_font(FontMain);
				draw_set_halign(fa_left);
				draw_sprite(spr_star, 0, x + 30, y + 23);
				var Text = TextData[TextID];
				if CInput.XPress
				{
					CurChar = string_length(Text);
					audio_play_sound(sfxText, 1, 0);
				}
				
				if CurChar < string_length(Text) and !(CFight.Time % 2)
				{
					CurChar++;
					audio_play_sound(sfxText, 1, 0);
				}
				draw_text_ext_transformed(x + 64, y + 12, string_copy(Text, 0, CurChar), 14, 280, 2, 2, 0);
			break;
			case 3:
			case 4:
			case 6:
				draw_sprite(spr_craze_aim, 0, x, y);
				draw_sprite_ext(spr_dot, 1, x + 460, y + 26, 51, 16, 0, c_white, 1);
				draw_sprite_ext(spr_dot, 0, x + 460, y + 27, ceil(max(Crazy.HP, 0) / 4444 * 81), 16, 0, c_white, 1);
			break;
			case 8:
				draw_sprite(spr_fightframe, instance_exists(HitStick) and Pressed, x + 64, y + 48);
			break;
			case st.magic:
				draw_set_font(FontMain);
				draw_set_halign(fa_left);
				
				var PosX = [0, 200, 0,  200];
				var PosY = [0, 0,   64, 64];
				for (var i = 0; i < 4; i++)
				{
					var Col = i == 1 and TP < 35 or i == 2 and TP < 50 ? c_gray : (MagicSelect == i ? $00FFFF : c_white);
					draw_text_ext_transformed_colour(x + PosX[i] + 24, y + PosY[i] + 8, McTextSelect[i], 12, 100, 2, 2, 0, Col, Col, Col, Col, 1);
					if i == MagicSelect
					{
						draw_sprite(spr_heart_g, 0, x + PosX[i] + 12, y + PosY[i] + 24);
					}
				}
				
				draw_text_ext_transformed_colour(x + 430, y, McText[MagicSelect], 14, 120, 2, 2, 0, c_gray, c_gray, c_gray, c_gray, 1);
			break;
		}
	}


