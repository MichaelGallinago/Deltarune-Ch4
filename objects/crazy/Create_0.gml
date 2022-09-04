/// @description Insert description here
// You can write your code in this editor

	HP      = 4444;
	State   = 0;
	SinTime = 0;
	OffsetX = 0;
	
	PosX = x;
	PosY = y;
	
	BlinkTime = 270;
	sBlink    = shader_get_uniform(ShaderBlink, "Time");