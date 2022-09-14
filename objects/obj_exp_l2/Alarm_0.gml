//main_died=true;

//creo il fade effect, lo faccio grande e invisibile, e metto create_fade_out a true
//così nello step event gli aumento progressivamente l'alpha
if(lock_1==-1) lock_1=0;
if(lock_1=0){
	fade_object = instance_create_depth(room_width/2,room_height/2,-1000,obj_fade_level_2);
	fade_object.image_xscale=20;
	fade_object.image_yscale=20;
	fade_object.image_alpha=0;
	create_fade_out=true;

	//inoltre, in obj_lost_live_system che è PERSISTENTE salvo la stanza corrente
	//e setto a true la guardia 1
	with(obj_lost_live_system){
		room_to_return=room;
		guard_1=true;
	}

}












