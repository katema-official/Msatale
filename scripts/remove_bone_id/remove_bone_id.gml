/// @function remove_bone_id
/// @arg array_bones
/// @arg id_to_remove
function remove_bone_id(argument0, argument1) {

	var i=0;
	var check = false;
	while(!check){
		if(argument0[i]==argument1){
			argument0[i]=undefined;
			check=true;
		}
		i++;
	}
	return argument0;


}
