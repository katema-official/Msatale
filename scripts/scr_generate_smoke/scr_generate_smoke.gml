/// @function scr_generate_smoke
/// @arg x
/// @arg y
function scr_generate_smoke(argument0, argument1) {

	xx = argument0;
	yy = argument1;
	up_spawn = irandom_range(xx-4,xx+4);
	down_spawn = irandom_range(xx-4,xx+4);
	right_spawn = irandom_range(yy-4,yy+4);
	left_spawn = irandom_range(yy-4,yy+4);
	inst_up = instance_create_layer(up_spawn,yy-4,"Instances",obj_smoke);
	inst_up.image_xscale = 0.5;
	inst_up.image_yscale = 0.5;
	inst_up.image_angle = irandom_range(0,359);
	inst_down = instance_create_layer(down_spawn,yy+4,"Instances",obj_smoke);
	inst_down.image_xscale = 0.5;
	inst_down.image_yscale = 0.5;
	inst_down.image_angle = irandom_range(0,359);
	inst_right = instance_create_layer(xx+4,right_spawn,"Instances",obj_smoke);
	inst_right.image_xscale = 0.5;
	inst_right.image_yscale = 0.5;
	inst_right.image_angle = irandom_range(0,359);
	inst_left = instance_create_layer(xx-4,left_spawn,"Instances",obj_smoke);
	inst_left.image_xscale = 0.5;
	inst_left.image_yscale = 0.5;
	inst_left.image_angle = irandom_range(0,359);


}
