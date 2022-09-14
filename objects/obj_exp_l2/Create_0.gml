//main_died = false;

/*  IGNORA QUESTO COMMENTO
//tutte le volte che questo oggetto viene creato io entro in una stanza che è uno stage effettivo del
//livello 2. Ergo, devo notificare ad obj_level_2_transition_system che la sua stanza corrente è
//quella in cui sono appena entrato.
with(obj_level_2_transition_system){
	rm_temp_current=room;
}
*/

//è una pazzia, lo so, ma per evitare che alarm[0] e alarm[1] avvengano insieme,
//dato che comunque funzionano su oggetti condivisi e persistenti...
lock_1 = -1;

create_fade_out=false;
enemies=0
all_dead=false;
main_tower = instance_find(obj_tank_1,0);
if(room!=rm_level_2_8){
	b_bar = instance_create_depth(room_width-30,room_height/2,10,obj_bullets_info);
	b_bar.image_xscale=3;
	b_bar.image_yscale=3;
}else{
	cam = view_camera[0];
	b_bar = instance_create_depth(camera_get_view_x(cam)+640-30,camera_get_view_y(cam)+480/2,-200,obj_bullets_info);
	b_bar.image_xscale=3;
	b_bar.image_yscale=3;
}



room_win_start_fade_out=false;

s3_2_1_via=false;


via=noone;

in = noone;