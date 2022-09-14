/// @function add_bone_id
/// @arg array_bones
/// @arg new_id
function add_bone_id(argument0, argument1) {

	var check = false;
	var i = 0;

	while(!check){
		if(argument0[i]==undefined){
			argument0[i]=argument1;
			check=true;
		}
		i++;
	}
	return argument0;



}
