/// @description Insert description here
// You can write your code in this editor

	shader_set(ShaderBlink);
	shader_set_uniform_f(sBlink, (dsin(BlinkTime) + 1) / 2);
	draw_self();
	shader_reset();



