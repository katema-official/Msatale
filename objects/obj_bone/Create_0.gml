orbit_target=obj_richardson;
orbit_speed=0.5; // how fast the orbiting object travels within it's orbit
orbit_length=40; // how big the orbit circunference is
orbit_place = 0;
if(global.bone_exist=false){		
	orbit_place = irandom_range(0,359);
	global.bone_array = add_bone_id(global.bone_array,id);
	global.bone_exist=true;
}else{
	global.bone_array = add_bone_id(global.bone_array,id);
	var previous_id_index = find_previous_bone_id(global.bone_array,id);
	if(previous_id_index==-1){
		if(global.bone_array[3]!=undefined){
			orbit_place = global.bone_array[3].orbit_place + 90;
		}else if(global.bone_array[2]!=undefined){
				orbit_place = global.bone_array[2].orbit_place + 180;
			}else if(global.bone_array[1]!=undefined){
					orbit_place = global.bone_array[1].orbit_place - 90;
				}else{
					orbit_place = irandom_range(0,359);
				}
	}else{
		if(previous_id_index<3){
			orbit_place = global.bone_array[previous_id_index].orbit_place + 90;  // error
		}else{
			orbit_place = insert_5th_bone_correctly(global.bone_array,id);
			orbit_speed=0.7;
			orbit_length=60;
		}
	}
}
image_angle = orbit_place;
image_alpha = 0;
alarm[0] = 2;