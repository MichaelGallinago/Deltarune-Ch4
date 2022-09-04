/// @description Insert description here
// You can write your code in this editor

	visible = State > 0;
	switch State
	{
		case 1:
		{
			if image_angle < 360
			{
				image_angle  += 20;
				image_xscale += 1/18;
				image_yscale += 1/18;
				if !(image_angle % 40)
				{
					with instance_create(x, y, Afterimage)
					{	
						sprite_index = other.sprite_index;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
						image_angle  = other.image_angle;
						depth        = other.depth - 1;
					}
				}
			}
			else
			{
				State = 2;
				image_angle  = 0;
				image_xscale = 1;
				image_yscale = 1;
			}	
		}
		break;
		case 3:
		{
			if image_angle > -360
			{
				image_angle  -= 20;
				image_xscale -= 1/18;
				image_yscale -= 1/18;
				if !(image_angle % 40)
				{
					with instance_create(x, y, Afterimage)
					{	
						sprite_index = other.sprite_index;
						image_xscale = other.image_xscale;
						image_yscale = other.image_yscale;
						image_angle  = other.image_angle;
						depth        = other.depth - 1;
					}
				}
			}
			else
			{
				State = 0;
				image_angle  = 0;
				image_xscale = 0;
				image_yscale = 0;
			}
		}
		break;
	}