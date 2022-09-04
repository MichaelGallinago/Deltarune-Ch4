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
			y -= 10;
			x -= image_xscale * 6.5;
		break;
		case 2:
			animation_play(spr_gosha_appear, 3, 0);
			if image_index == 12
			{
				sprite_index = spr_gosha_stand;
				State = 3;
			}
		break;
	}