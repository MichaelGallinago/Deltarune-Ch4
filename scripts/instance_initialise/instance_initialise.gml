/// @function instance_initialise()
function instance_initialise()
{	
	if !variable_instance_exists(id, "Obj_AnimDuration")
	{
		Obj_AnimTimer     = 0;
		Obj_AnimDuration  = 0;
		Obj_AnimLoopframe = 0;
		image_speed		  = 0;
	}
}