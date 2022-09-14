/// @function find_previous_bone_id
/// @arg bone_array
/// @arg current_id
function find_previous_bone_id(argument0, argument1) {
	var i=0;
	var pos=-10;
	var check=false;
	while(!check){
		if(argument0[i]==argument1){
			pos = i-1;
			check=true;
		}
		i++;
	}
	return pos;


}
