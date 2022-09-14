if(sprite_above!=-1){
	if(the_sprite_has_changed==true){
		curr = instance_create_layer(sprite_above_x,sprite_above_y,"Instances",obj_target_dialogue_narration);
		curr.sprite_index=sprite_above;
		if(is_first_image==true){
			curr.image_index = image_above_index;
			curr.image_alpha = 1;
			is_first_image=false;
		}else{
			curr.image_index = image_above_index;
			curr.image_alpha=0.01;
		}
		//curr.image_alpha=sprite_above_alpha;
		the_sprite_has_changed=false;
		//draw_sprite_ext(sprite_above,image_above_index,sprite_above_x,sprite_above_y,1,1,0,c_white,sprite_above_alpha);	
	}
}