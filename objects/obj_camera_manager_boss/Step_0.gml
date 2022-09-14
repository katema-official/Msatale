//gestione del fullscreen
if(keyboard_check_pressed(ord("F"))){
	if(window_get_fullscreen()==false){
		fullscreen_state=true;
		window_set_fullscreen(true);	
	}else{
		fullscreen_state=false;
		window_set_fullscreen(false);	
	}
}

//se sono morto
if(!instance_exists(camera_target)){
	automa_gest_camera=player_dead_0;
}

//automa per la gestione della camera. In ogni stato, distinguo se sono a schermo intero o no,
//dato che alcune variabili rilevanti cambiano.
switch(automa_gest_camera){
	
	case player_dead_0:
		var x_t=boss_target.x - normal_width/2;
		var y_t=boss_target.y - normal_height/2
		x_t = clamp(x_t, 0, room_width - normal_width);
		y_t = clamp(y_t, 0, room_height - normal_height);
		
		if(change_camera_boss_0(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),
		camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]),
		x_t, y_t, normal_width, normal_height, 0.1)==true){
			automa_gest_camera=player_dead_1;
		}
	break;
	case player_dead_1:
		camera_x = boss_target.x - normal_width/2;
		camera_y = boss_target.y - normal_height/3;
		camera_set_view_size(view_camera[0], normal_width, normal_height);
		camera_set_view_pos(view_camera[0], camera_x, camera_y);
		surface_resize(application_surface, normal_width, normal_height);
	break;
	
	case initial_cutscene_0:
		camera_set_view_size(view_camera[0], normal_width, normal_height);
		surface_resize(application_surface, normal_width, normal_height);
		automa_gest_camera=initial_cutscene_1;
	break;
	case initial_cutscene_1:
		camera_x = boss_target.x - normal_width/2;
		camera_y = boss_target.y - normal_height/3;
		camera_set_view_pos(view_camera[0], camera_x, camera_y);
		if(boss_mid_phases.phase_0_completed==true){
			//switcho la cam
			automa_gest_camera=initial_cutscene_2;
		}
	break;
	case initial_cutscene_2:
		var x_t=camera_target.x - normal_width/2;
		var y_t=camera_target.y - normal_height/2
		x_t = clamp(x_t, 0, room_width - normal_width);
		y_t = clamp(y_t, 0, room_height - normal_height);
		
		
		
		if(change_camera_boss_0(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),
		camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]),
		x_t, y_t, normal_width, normal_height, val0)==true){
			automa_gest_camera=small_0;
		}
	
	break;
	
	
	case small_0:	//quando voglio la visuale piccola, innanzitutto imposto la dimensione della camera
					//e dell'application surface
			camera_set_view_size(view_camera[0], normal_width, normal_height);
			surface_resize(application_surface, normal_width, normal_height);
			automa_gest_camera=small_1;
	break;
	case small_1:	//poi mi occupo di seguire costantemente il giocatore
			camera_x = camera_target.x - normal_width/2;
			camera_y = camera_target.y - normal_height/2;
			camera_x = clamp(camera_x, 0, room_width - normal_width);
			camera_y = clamp(camera_y, 0, room_height - normal_height);
			camera_set_view_pos(view_camera[0], camera_x, camera_y);
	break;
	case small_2:	//transizione "smooth" da piccolo a grande
		if(change_camera_boss_0(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),
		camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]),
		0, 0, room_width, room_height, 0.5)==true){
			automa_gest_camera=all_room_0;
		}
	break;
	case all_room_0:	//setto la dimensione e la posizione della camera quando sono a tutta stanza
			camera_set_view_size(view_camera[0], room_width, room_height);
			camera_set_view_pos(view_camera[0], 0, 0);
			surface_resize(application_surface, room_width, room_height);
			automa_gest_camera=all_room_1;
	break;
	case all_room_1:	//una volta settate le impostazioni della camera non faccio altro
		
	break;
	case all_room_2:	//per la transizione "smooth" da grande a piccolo
		var x_t=camera_target.x - normal_width/2;
		var y_t=camera_target.y - normal_height/2
		x_t = clamp(x_t, 0, room_width - normal_width);
		y_t = clamp(y_t, 0, room_height - normal_height);
		if(change_camera_boss_0(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),
		camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]),
		x_t, y_t, normal_width, normal_height, 0.5)==true){
			automa_gest_camera=small_0;
		}
	break;
}


//come switchare modalità della camera
if(keyboard_check_pressed(ord("C"))){
	if(automa_gest_camera==small_1 || automa_gest_camera==initial_cutscene_2){
		automa_gest_camera=small_2;
	}
	if(automa_gest_camera==all_room_1){
		automa_gest_camera=all_room_2;
	}
}

