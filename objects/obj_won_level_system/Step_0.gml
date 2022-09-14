if(room==rm_won_stage_level_2 && guard_1){
	guard_1=false; //così eseguo questo pezzo di codice una volta sola
	alarm[0] = 180;	//start_going_back=true;
}


if(room==rm_won_stage_level_2){
	var bg = layer_background_get_id("Background");
	layer_background_xscale(bg,10);
	layer_background_yscale(bg,10);
	
}


if(room==rm_won_stage_level_2 && start_going_back){	//fade out
	c_f.image_alpha+=0.018;
	if(c_f.image_alpha>=1){
		instance_destroy(c_f);
		switch(room_to_return){
			case rm_commands_2: room_goto(rm_level_2_0); break;
			case rm_level_2_0: room_goto(rm_level_2_1); break;
			case rm_level_2_1: room_goto(rm_level_2_2); break;
			case rm_level_2_2: room_goto(rm_level_2_3); break;
			case rm_level_2_3: room_goto(rm_level_2_4); break;
			case rm_level_2_4: room_goto(rm_level_2_5); break;
			case rm_level_2_5: room_goto(rm_level_2_6); break;
			case rm_level_2_6: room_goto(rm_level_2_7); break;
			case rm_level_2_7: room_goto(rm_level_2_8); break;
			case rm_level_2_8: room_goto(rm_level_2_pre_boss); break;
			//case rm_level_2_9: room_goto(rm_level_2_10); break;
		}
	}
}else{
	if(room==rm_won_stage_level_2 && instance_exists(c_f)){	//fade in
		i1++;
		if(i1>=30){
			c_f.image_alpha-=0.018;
			if(c_f.image_alpha<=0){
				c_f.image_alpha=0;
			}	
	
		}
	
	}
}


if(room==rm_won_stage_level_2){
	if(past_lives_count!=global.total_lives_level_2){
		past_lives_count=global.total_lives_level_2;	
	}
}



if(up==true){
	i3++;
	if(i3<=20){
		up_xscale+=0.05;
		up_yscale+=0.05;
	}
	if(i3>20 && i3<=40){
		up_xscale-=0.05;
		up_yscale-=0.05
	}
	if(i3>40){
		up_xscale=2;
		up_yscale=2;
	}
}