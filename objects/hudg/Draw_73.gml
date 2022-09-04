/// @description Insert description here
// You can write your code in this editor

	draw_sprite(spr_icon_fight,  Selected == 0, x - 76, y + 71);
	draw_sprite(spr_icon_magic,  Selected == 1, x - 41, y + 71);
	draw_sprite(spr_icon_item,   Selected == 2, x - 6,  y + 71);
	draw_sprite(spr_icon_spare,  Selected == 3, x + 29, y + 71);
	draw_sprite(spr_icon_defend, Selected == 4, x + 64, y + 71);
	
	var IconID;
	switch Textbox.State
	{
		case st.attack:  IconID = 1; break;
		case st.magic:   IconID = 2; break;
		case st.spare:   IconID = 4; break;
		case st.defence: IconID = 5; break;
		default:         IconID = 0; break;
	}
	draw_sprite(spr_act_icon, IconID, x - 79, y + 20); 
	
	draw_set_font(CFight.FontLife);
	draw_set_halign(fa_right);
	draw_text(x + 52, y + 8, string(Gosha.HP));