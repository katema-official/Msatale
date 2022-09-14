if(room==rm_won_stage_level_2){
	global.current_level_2_stage++;
	i1=0;
	i2=0;
	i3=0;
	up=false;
	up_xscale=2;
	up_yscale=2;
	start_going_back=false;
	c_f = instance_create_depth(room_width/2,room_height/2,-1000,obj_fade_level_2);
	c_f.image_xscale=50;
	c_f.image_yscale=50;
	c_f.image_alpha=1;
}

if(room==rm_won_stage_level_2){
	if(room_to_return==rm_level_2_4){
		alarm[1] = 90; //vita++
	}	
}