scr_debris_creation(x,y);
instance_destroy();
global.bone_array = remove_bone_id(global.bone_array,id);
if(number_of_bones(global.bone_array)==0){
	global.bone_exist=false;	
}
with(other){
	repeat(2){
		switch(sprite_index){
			case spr_ven_big: 
				var new_ven = instance_create_layer(x,y,"Instances",obj_ven);
				new_ven.sprite_index = spr_ven_medium;
				break;
			case spr_ven_medium:
				var new_ven = instance_create_layer(x,y,"Instances",obj_ven);
				new_ven.sprite_index = spr_ven_small;
				break;
		}
	instance_destroy();
	}
}