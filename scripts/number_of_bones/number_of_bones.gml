/// @function number_of_bones
/// @arg bone_array
function number_of_bones(argument0) {
	var i;
	var count = 0;
	for(i=0;i<12;i++){
		if(argument0[i]!=undefined){
			count++;
		}
	}
	return count;


}
