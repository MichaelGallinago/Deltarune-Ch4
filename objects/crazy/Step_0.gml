/// @description Insert description here
// You can write your code in this editor
	
	switch State
	{
		case 1: 
			if !(CFight.Time % 4)
			{
				with instance_create(x, y, Afterimage)
				{	
					sprite_index = other.sprite_index;
					image_xscale = other.image_xscale;
					image_yscale = other.image_yscale;
				}
			}
			PosY -= 10;
			PosX -= image_xscale * 6.5;
		break;
		case 2:
			animation_play(spr_crazy_appear, 18, 0);
			if image_index == 2
			{
				sprite_index = spr_crazy_stand;
				State = 3;
			}
		break;
	}
	
	if Textbox.State == st.preattack or Textbox.State == st.premagic or Textbox.State == st.prespare
	{
		BlinkTime += 4;
	}
	else
	{
		BlinkTime = 270;
	}
	
	if OffsetX OffsetX--;
	x = floor(PosX + OffsetX * (OffsetX % 2 * 2 - 1));
	y = floor(PosY);
	