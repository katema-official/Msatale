/// @function scr_debris_creation
/// @arg xx
/// @arg yy
function scr_debris_creation(argument0, argument1) {
	repeat(10){
				instance_create_layer(argument0,argument1,"Instances",obj_debris);
	}


}
