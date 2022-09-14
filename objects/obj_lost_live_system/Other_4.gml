if(room==rm_lost_live_level_2){
	global.total_lives_level_2--;
	i1=0;
	i2=0;
	start_going_back=false;
	c_f = instance_create_depth(room_width/2,room_height/2,-1000,obj_fade_level_2);
	c_f.image_xscale=50;
	c_f.image_yscale=50;
	c_f.image_alpha=1;
}