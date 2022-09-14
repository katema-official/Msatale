/// @function insert_5th_bone_correctly
/// @arg bone_array
/// @arg last_inserted_id
function insert_5th_bone_correctly(argument0, argument1) {
	var i = 4;
	var last_pos = -1;
	var new_id_pos = -1;
	for(i=4;i<12;i++){
		if(argument0[i]!=undefined){
			last_pos=i;
		}
		if(argument0[i]==argument1){
			new_id_pos=i;
		}
	}
	if(new_id_pos==4 && last_pos==4){
		return irandom_range(0,359);
	}else if(new_id_pos==4 && last_pos!=4){
			return argument0[last_pos].orbit_place - (last_pos-4)*45;
		}else{
			return argument0[new_id_pos-1].orbit_place + 45;
			}





}
