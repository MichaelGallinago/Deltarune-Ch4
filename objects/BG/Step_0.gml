/// @description Insert description here
// You can write your code in this editor
	
	if CFight.Time >= 120 and CFight.Time < 160
	{
		InitY -= 7.5;
		y = InitY;
	}
	else if CFight.Time >= 160
	{
		y = round(InitY + dsin(CFight.Time * 10) * 24);
	}