instance_destroy();
if(number_of_bones(global.bone_array)<12){
	instance_create_layer(x,y,"Instances",obj_bone);
}