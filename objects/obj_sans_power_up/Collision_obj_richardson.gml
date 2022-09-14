instance_destroy();
repeat(4){
	if(number_of_bones(global.bone_array)<12){
		instance_create_layer(other.x,other.y,"Instances",obj_bone);
	}
}