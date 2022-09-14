//blocco tutto all'inizio della stanza
all_objects[0, 0] = noone;
starting_pause=true; //all'inizio della stanza il mio gioco è in pausa
if(starting_pause==true){
	var offset=0;
	for(var i = 0; i<instance_count; ++i){
		if(instance_find(all, i).sprite_index != -1 &&
		instance_find(all, i).object_index != obj_collision_0 &&
		instance_find(all, i).object_index != obj_collision_1){
			all_objects[i - offset, 0] = instance_find(all, i).sprite_index;
			all_objects[i - offset, 1] = instance_find(all, i).image_index;
			all_objects[i - offset, 2] = instance_find(all, i).x;
			all_objects[i - offset, 3] = instance_find(all, i).y;
			all_objects[i - offset, 4] = instance_find(all, i).image_xscale;
			all_objects[i - offset, 5] = instance_find(all, i).image_yscale;
			all_objects[i - offset, 6] = instance_find(all, i).image_angle;
			all_objects[i - offset, 7] = instance_find(all, i).image_blend;
			all_objects[i - offset, 8] = instance_find(all, i).image_alpha;
			all_objects[i - offset, 9] = instance_find(all, i).id;
		}else{
			++offset;	
		}
	}
	instance_deactivate_all(true);
	alarm[2] = 180 //dopo 3 secondi (1 di fade + 2 normali) voglio riattivare tutto
}

starting_fade = instance_create_depth(room_width/2,room_height/2,-1000,obj_fade_level_2);
starting_fade.image_xscale=50;
starting_fade.image_yscale=50;
create_fade_out_start=true;

timer_init=instance_create_depth(room_width/2,room_height/2,-900,obj_3_2_1_timer);
timer_init.image_xscale=8;
timer_init.image_yscale=8;
timer_init.image_alpha=0;

if(room==rm_level_2_8){	//mi serve per mettere lo sprite del bullet info quando c'è la camera nella stanza
	in = instance_create_depth(camera_get_view_x(cam)+640-30,camera_get_view_y(cam)+480/2,-1000,obj_bullets_info);
	in.image_index=5;
	in.image_xscale=3;
	in.image_yscale=3;	
}

