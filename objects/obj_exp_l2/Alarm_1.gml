if(lock_1==-1) lock_1=1;
if(lock_1==1){

	fade_out_end = instance_create_depth(room_width/2,room_height/2,-1000,obj_fade_level_2);
	fade_out_end.image_xscale=20;
	fade_out_end.image_yscale=20;
	fade_out_end.image_alpha=0;
	room_win_start_fade_out=true;

	with(obj_won_level_system){
		room_to_return=room;
		guard_1=true;	
	}


}