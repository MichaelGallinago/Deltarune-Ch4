/// @description Insert description here
// You can write your code in this editor
	
	var Tense = Textbox.TP;
	var Select = Textbox.MagicSelect;
	
	var PosX = clamp(Time * 2 - 360, -32, 32);
	var Change = sign(Tense - TPPos);
	TPPos += Change;
	
	var Col = Change >= 0 ? (Tense == 100 ? $20D0FF : $40A0FF) : c_red;
	
	draw_sprite_ext(spr_white, 0, PosX + 3, 291, 20, 100, 0, $000080, 1);
	draw_sprite_ext(spr_white, 0, PosX + 3, 291, 20, Tense ? 2 + Tense : 1, 0, c_white, 1);
	draw_sprite_ext(spr_white, 0, PosX + 3, 291, 20, TPPos, 0, Col, 1);
	
	if Textbox.State == st.magic and (Select == 1 or Select == 2)
	{
		draw_sprite_ext(spr_gray,  0, PosX + 3, 291 - TPPos, 20, min(TPPos, Tense, (Select == 1 ? 35 : 50)), 0, c_white, 1);
	}
	
	draw_sprite(spr_tp, 0, PosX, 240);
	draw_set_halign(fa_center);
	draw_set_font(FontMain);
	
	Col = Tense == 100 ? $00FFFF : c_white;
	draw_text_ext_transformed_colour(PosX - 18, 230, Tense == 100 ? "G" : string(Tense), 0, 40, 2, 2, 0, Col, Col, Col, Col, 1);