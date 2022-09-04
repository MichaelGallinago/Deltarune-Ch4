/// @description Insert description here
// You can write your code in this editor
	
	if y == 363 and (State < 7 or State == st.magic)
	{
		if CInput.ZPress and !(MagicSelect == 1 and TP < 35 or MagicSelect == 2 and TP < 50)
		{
			audio_play_sound(sfxSelect, 1, 0);
			switch State
			{
				case st.select:
					if HUDG.Selected != 2
					{
						State = HUDG.Selected + 3;
						if State == st.defence
						{
							TP = min(TP + 16, 100);
							Defence = 10;
							with Gosha instance_create(x + 64, y + 64, IceWall).depth = depth - 1;
						}
					}
				break;
				case st.preattack:
					instance_create(x + 240, y + 66, HitStick).depth = depth - 1;
					State = st.attack;
					Damage = 4;
					AttackTimer = 0;
				break;	
				case st.premagic:
					State = st.magic;
				break;	
				case st.prespare:
					State = st.spare;
					TextID = 2;
					CurChar = 0;
				break;
				case st.magic:
					State = st.action;
					AttackTimer = 0;
					CurChar = 0;
					switch MagicSelect
					{
						case 0: 
							TextID = 3;
						break;
						case 1: 
							TextID  = 5;
							Damage  = 44;
							IceStep = 3;
							TP = max(TP - 35, 0);
						break;
						case 2:
							TextID = 6;
							Damage = IceStep ? 144 : 64;
							TP = max(TP - 50, 0);
						break;
						case 3: 
							TextID = 4; 
						break;
					}
				break;
			}
		}
		else if CInput.XPress and State != st.select
		{
			audio_play_sound(sfxMenumove, 1, 0);
			State = State == st.magic ? st.premagic : st.select;
		}
	}
	
	switch State
	{
		case st.none:
			if y < 551
			{
				y = min(551, y + 20);
			}
		break;
		case st.appear:
			if y > 363
			{
				y = max(363, y - 20);
			}
			else
			{
				State = st.select;
			}
		break;
		case st.select:
			TextID = 1;
		break;
		case st.defence:
			with Gosha animation_play(spr_gosha_appear, 3, 12);
		break;
		case st.attack:
			if !Pressed
			{
				with Gosha animation_play(spr_gosha_prepare, 6, 2);
			}
			else
			{
				with Gosha animation_play(spr_gosha_attack, 6, 7);
				AttackTimer++; 
					
				if !(AttackTimer % 3) and AttackTimer < 30
				{
					with Crazy instance_create(x + (irandom(10) - 5) * 5, y + (irandom(10) - 5) * 3 - other.AttackTimer * 2 + 40, Spark).depth = depth - 1;
				}
				switch AttackTimer
				{
					case 30:
						crazy_damage();
					break;
					case 35: case 40: case 45:
						with Crazy instance_create(x + (irandom(10) - 5) * 5, y + (irandom(10) - 5) * 3 - other.AttackTimer * 2  + 100, Snowflake).depth = depth - 1;
					break;
				}	
			}
		break;
		case st.spare:
			with Gosha animation_play(spr_gosha_spare, [8, 60, 8, 1], 3);
		break;
		case st.magic:
			if CInput.Right1Press or CInput.Left1Press
			{
				switch MagicSelect
				{
					case 0: MagicSelect = 1; break;
					case 1: MagicSelect = 0; break;
					case 2: MagicSelect = 3; break;
					case 3: MagicSelect = 2; break;
				}
				audio_play_sound(sfxMenumove, 1, 0);
			}
			else if CInput.Down1Press or CInput.Up1Press
			{
				switch MagicSelect
				{
					case 0: MagicSelect = 2; break;
					case 1: MagicSelect = 3; break;
					case 2: MagicSelect = 0; break;
					case 3: MagicSelect = 1; break;
				}
				audio_play_sound(sfxMenumove, 1, 0);
			}
		break;
		case st.action:
			AttackTimer++;
			switch MagicSelect
			{
				case 0: 
					with Gosha animation_play(spr_gosha_act, 6, 2);
				break;
				case 1:  
					with Gosha animation_play(spr_gosha_attack, 6, 7); 
					if AttackTimer < 30 and !(AttackTimer % 3) 
					{
						with Crazy instance_create(x + (irandom(10) - 5) * 5, y - 200, Ice).depth = depth - 1;
						if !(AttackTimer % 9)  audio_play_sound(sfxCrow, 1, 0);
					}
					
					if AttackTimer > 20 and AttackTimer < 50 and !(AttackTimer % 9)
					{
						audio_play_sound(sfxHit, 1, 0);
					}
					switch AttackTimer
					{
						case 15: Crazy.image_blend = c_blue;  break;
						case 50: crazy_damage();              break;
						case 55: Crazy.image_blend = c_white; break;
					}
				break;
				case 2: 
					with Gosha animation_play(spr_gosha_attack, 6, 7);
					switch AttackTimer
					{
						case 1:  with Gosha instance_create(x, y, Goku);           break;
						case 30: with Gosha instance_create(x + 16, y, IceRocket); break;
						case 55: Crazy.image_blend = c_blue;                       break;
						case 60: crazy_damage();                                   break;
						case 65: Crazy.image_blend = c_white;                      break;
					}
				break;
				case 3: 
					with Gosha animation_play(spr_gosha_attack, 6, 7); 

					if !(AttackTimer % 3) and AttackTimer < 30
					{
						with Crazy instance_create(x + (irandom(10) - 5) * 5, y + (irandom(10) - 5) * 3 - other.AttackTimer * 2 + 34, SleepMist).depth = depth - 1;
					}
					switch AttackTimer
					{
						case 5:  Crazy.image_blend = c_blue;  break;
						case 40: Crazy.image_blend = c_white; break;
					}
				break;
			}
		break;
	}