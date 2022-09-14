//CAMERA
view_enabled=true;
view_visible[0]=true;
ideal_width=640;
ideal_height=480;

//aspect ratio del monitor
aspect_ratio=640/480;


/*per ora questa parte la metto come commento, ma credo mi sarà utile per il full screen

//calcolo, mantenendo fissa l'altezza, la larghezza ideale
ideal_width=round(aspect_ratio*ideal_height);

//operazione per assicurarmi che la larghezza calcolata sia pari. E' una bitwise operation
if(ideal_width & 1){
	ideal_width++;	
}

*/

camera_set_view_size(view_camera[0], ideal_width, ideal_height);


camera_target=instance_nearest(x,y,obj_tank_1);
camera_x=0;
camera_y=0;
if(window_get_fullscreen()==false){
	window_set_size(640, 480);
	surface_resize(application_surface, 640, 480);
}
	

camera_state = 0; //0 = riprendo poco, 1 = riprendo tutta la stanza





alarm[0] = 1;