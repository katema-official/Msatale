/// @function change_camera_boss_0(x_start, y_start, w_start, h_start, x_end, y_end, w_end, h_end, speed_zoom)
/// @param {} x_start
/// @param {} y_start
/// @param {} w_start
/// @param {} h_start
/// @param {} x_end
/// @param {} y_end
/// @param {} w_end
/// @param {} h_end
/// @param {} speed_zoom
/// @description la funzione deve muovere la camera dalle cordinate iniziali a quelle finali,
/// ed eventualmente farne un resize. Quando i quattro argomenti iniziali coincidono con quelli finali
/// siamo a posto e possiamo finire. speed_zoom indica quanto velocemente deve avvenire il movimento,
/// sia per lo spostamento sia per il resize
/// se la funzione ha portato le cose al loro posto ritorna true, altrimenti se deve ancora spostare 
/// ritorna false


function change_camera_boss_0(x_start, y_start, w_start, h_start, x_end, y_end, w_end, h_end, speed_zoom){
	if(x_start!=x_end){
		x_start=lerp(x_start, x_end, speed_zoom);
	}
	if(y_start!=y_end){
		y_start=lerp(y_start, y_end, speed_zoom);	
	}
	if(w_start!=w_end){
		w_start=lerp(w_start, w_end, speed_zoom);	
	}
	if(h_start!=h_end){
		h_start=lerp(h_start, h_end, speed_zoom);	
	}
	if(abs(x_start-x_end)<=1 && abs(y_start-y_end)<=1 && abs(w_start-w_end)<=1 && abs(h_start-h_end)<=1){
		return true;
	}else{
		camera_set_view_pos(view_camera[0], x_start, y_start);
		camera_set_view_size(view_camera[0], w_start, h_start);
		return false;	
	}

}



/// @function make_fade_out(initial_alpha, duration_in_steps)
/// @param {} initial_alpha
/// @param {} duration_in_steps
/// @description la funzione prende un alpha iniziale (0 o 1) e una durata di fading, creando l'effetto desiderato.
/// restituisce l'oggetto


function make_fade_out(initial_alpha, duration_in_steps){
	var fade=instance_create_depth(0, 0, -100000, obj_fade_new);
	fade.image_alpha=initial_alpha;
	fade.image_xscale=10000;
	fade.image_yscale=10000;
	fade.fading_factor = 1/duration_in_steps;
	fade.initial_alpha_fade=initial_alpha;
	return fade;
}


















