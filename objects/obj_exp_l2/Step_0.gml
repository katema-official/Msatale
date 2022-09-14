if(create_fade_out){
	fade_object.image_alpha+=0.016;
	if(fade_object.image_alpha>=1){
		//quando l'alpha è a uno vado nella stanza del punteggio
		//e si attiva obj_lost_live_system nello step event
		room_goto(rm_lost_live_level_2);	
	}
}

if(create_fade_out_start && instance_exists(starting_fade)){
	starting_fade.image_alpha-=0.017;
	if(starting_fade.image_alpha<=0){
		instance_destroy(starting_fade);
		create_fade_out_start=false;
		timer_init.image_alpha=1;
		s3_2_1_via=true;
	}
	
}




if(instance_exists(main_tower)){
	if(room!=rm_level_2_8){
		switch(main_tower.bullet_pot){
			case 0:
				b_bar.image_index=0;
			break;
			case 1:
				b_bar.image_index=1;
			break;
			case 2:
				b_bar.image_index=2;
			break;
			case 3:
				b_bar.image_index=3;
			break;
			case 4:
				b_bar.image_index=4;
			break;
			case 5:
				b_bar.image_index=5;
			break;
		}
	}else{
		b_bar.x=camera_get_view_x(cam)+640-30;
		b_bar.y=camera_get_view_y(cam)+480/2;
		switch(main_tower.bullet_pot){
			case 0:
				b_bar.image_index=0;
			break;
			case 1:
				b_bar.image_index=1;
			break;
			case 2:
				b_bar.image_index=2;
			break;
			case 3:
				b_bar.image_index=3;
			break;
			case 4:
				b_bar.image_index=4;
			break;
			case 5:
				b_bar.image_index=5;
			break;
		}
	}
}

if(keyboard_check_pressed(ord("R"))){
	room_restart();	
}

//quanti nemici sono presenti (bruttino ma vbb)
enemies=instance_number(obj_tank_tower_t_0) + instance_number(obj_tank_enemy_t_0)
+instance_number(obj_tank_enemy_b_1) + instance_number(obj_tank_enemy_b_2)
+instance_number(obj_tank_enemy_b_3);

//se li ho ammazzati tutti
if(enemies<=0 && !all_dead && start_calculating_enemies){
	all_dead=true;
	alarm[1]=60;	
}

if(room_win_start_fade_out){	//vai nella stanza che ti manda al livello successivo
	fade_out_end.image_alpha+=0.017;
	if(fade_out_end.image_alpha>=1){
		room_goto(rm_won_stage_level_2);	
	}
}


if(s3_2_1_via && instance_exists(timer_init)){
	c1++;	//deve durare 40 step
	if(c1<40){
		timer_init.image_xscale-=0.1;
		timer_init.image_yscale-=0.1;
	}
	if(c1==40){
		timer_init.image_index=1;
		timer_init.image_xscale=8;
		timer_init.image_yscale=8;
	}
	if(c1>40 && c1<80){
		timer_init.image_xscale-=0.1;
		timer_init.image_yscale-=0.1;
	}
	if(c1==80){
		timer_init.image_index=2;
		timer_init.image_xscale=8;
		timer_init.image_yscale=8;
	}
	if(c1>80 && c1<120){
		timer_init.image_xscale-=0.1;
		timer_init.image_yscale-=0.1;
	}
	
	if(c1>=120){
		instance_destroy(timer_init);
		via = instance_create_depth(room_width/2,room_height/2,-900,obj_via_timer);
		via.image_xscale=2;
		via.image_yscale=2;
		c1=0;
	}
	
	
}

if(instance_exists(via)){
	c1++;
	if(instance_exists(in) && c1>=5) instance_destroy(in);	//se sono in una room con la cam lo rimuovo "subito"
	if(c1>=30) instance_destroy(via);
	
}