/// @description Insert description here
// You can write your code in this editor

	Time  = 0;
	TPPos = 0;
	random_set_seed(randomize());
	
	enum st
	{
		none      = 0,
		appear    = 1,
		select    = 2,
		preattack = 3,
		premagic  = 4,
		items     = 5,
		prespare  = 6,
		defence   = 7,
		attack    = 8,
		magic     = 9,
		spare     = 10,
		fight     = 11,
		action    = 12
	}