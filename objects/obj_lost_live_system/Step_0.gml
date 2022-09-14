if(room==rm_lost_live_level_2 && guard_1){
	guard_1=false; //così eseguo questo pezzo di codice una volta sola
	alarm[0] = 180;	//start_going_back=true;
}

if(room==rm_lost_live_level_2){
	var bg = layer_background_get_id("Background");
	layer_background_xscale(bg,10);
	layer_background_yscale(bg,10);
	
}


if(room==rm_lost_live_level_2 && start_going_back){
	c_f.image_alpha+=0.018;
	if(c_f.image_alpha>=1){
		room_goto(room_to_return);
		instance_destroy(c_f);
	}
}else{
	if(room==rm_lost_live_level_2 && instance_exists(c_f)){
		i1++;
		if(i1>=30){
	
			c_f.image_alpha-=0.018;
			if(c_f.image_alpha<=0){
				c_f.image_alpha=0;
			}	
	
		}
	
	}
}

if(room==rm_lost_live_level_2){
	if(past_lives_count!=global.total_lives_level_2){
		past_lives_count=global.total_lives_level_2;	
	}
}

