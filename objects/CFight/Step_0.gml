/// @description Insert description here
// You can write your code in this editor
	
	switch (Time++)
	{
		case 90:
			audio_play_sound(sfxBattleenter, 1, 0);
			GroupAppear.State = 1;
		break;
		case 120:
			audio_play_sound(sfxWeaponpull, 1, 0);
			with GroupAppear
			{
				State = 2;
				InitX = round(x);
				InitY = round(y);
			}
		break;
		case 180:
			audio_play_sound(bgmBattle, 1, true);
			Textbox.State = st.appear;
		break;
	}
	
	if keyboard_check_pressed(vk_f4)
	{
		window_set_fullscreen(!window_get_fullscreen());
	}