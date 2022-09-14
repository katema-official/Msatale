camera_x = camera_target.x - ideal_width/2;
camera_y = camera_target.y - ideal_height/2;
if(camera_state==0){
	camera_x = clamp(camera_x, 0, room_width - ideal_width);
	camera_y = clamp(camera_y, 0, room_height - ideal_height);
}else{
	camera_x = clamp(camera_x, 0, 0);
	camera_y = clamp(camera_y, 0, 0);
}


camera_set_view_pos(view_camera[0], camera_x, camera_y);


if(keyboard_check_pressed(ord("C"))){
	if(camera_state==0){
		camera_state=1;
		camera_set_view_size(view_camera[0], room_width, room_height);
	}else{
		camera_state=0;
		camera_set_view_size(view_camera[0], ideal_width, ideal_height);
	}
}

if(keyboard_check_pressed(ord("F"))){
	if(window_get_fullscreen()==false){
		
		var d = round(display_get_height()/ideal_height);
		ideal_height=display_get_height()/d;
		ideal_width=aspect_ratio*ideal_height;
		surface_resize(application_surface, ideal_width, ideal_height);
		
		window_set_fullscreen(true);	
	}else{
		
		ideal_height=480;
		ideal_width=640;
		surface_resize(application_surface, 640, 480);
		
		window_set_fullscreen(false);	
	}

}

