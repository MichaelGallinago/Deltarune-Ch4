/// @description Insert description here
// You can write your code in this editor

	State = st.none;
	draw_set_font(FontMain);
	CurChar = 0;
	TextID = 0;
	AttackTimer = 0;
	MagicSelect = 0;
	Pressed = false;
	Damage = 0;
	Defence = 0;
	TP = 99;
	IceStep = 0;
	TextData = [
		"",
		"You are being ambushed, apparently!",
		"Gosha spared the enemies... \nBut none of the enemies names \nwere yellow!",
		"You pointed out, that Craze has no reason in fighting you.",
		"Gosha uses Cold Pear.\nBut the enemy was not TIRED...",
		"Attention! Possible falling icicles",
		"Power of G!",
		"",
		"Doesn't seem like attacking would work.",
		"No matter how I put this, doesn't look like talking it out would work either.",
		"You do know you're talking?",
		"Like... out loud?",
		"Oh...",
		"(Didn't mean that to happen, that's for sure.)",
		"I've got my orders pal.",
		"You've got either to fight me, or to go with me so we'll lock you all up.",
		"Do I look like a guy that'll give up?",
		"To be honest, kind of yeah.",
		"Rude.",
		""
	];
	
	McTextSelect = ["G-Action", "Freeze Gist", "Ice Charge", "Cold Pear"];
	McText = [
		"Special ability,\nthat allows\nyou to act.", 
		"Deals medium damage next\n3 turns.\n35% TP", 
		"Slows down enemies,deals high damage.\n50% TP", 
		"Makes tired enemies fall asleep."
	];