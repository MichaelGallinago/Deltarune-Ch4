function crazy_damage()
{
	with Crazy 
	{
		instance_create(x, y, DamageInd).depth = depth - 4;
		audio_play_sound(sfxDamage, 1, 0);
		OffsetX = irandom_range(16,24);
		HP -= other.Damage;
	}
}