//dimensioni ideali. Mi interessa mantenere l'altezza, poiché ritengo che la larghezza sia più facile da adattare
ideal_width=0;
ideal_height=480;

//aspect ratio del monitor
aspect_ratio=display_get_width()/display_get_height();


//calcolo, mantenendo fissa l'altezza, la larghezza ideale
ideal_width=round(aspect_ratio*ideal_height);

//operazione per assicurarmi che la larghezza calcolata sia pari. E' una bitwise operation
if(ideal_width & 1){
	ideal_width++;	
}

//dichiaro le dimensioni che voglio tenere quando non sono a schermo intero
normal_width=640;
normal_height=480;
fullscreen_state=window_get_fullscreen();

//attivo una camera
view_enabled=true;
view_visible[0]=true;
camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_size(view_camera[0], normal_width, normal_height);

//resize della camera
surface_resize(application_surface, normal_width, normal_height);
window_set_size(normal_width, normal_height);


//variabili per la gestione della camera, anche a seconda di come è stata impostata
automa_gest_camera=0;
initial_cutscene_0=-10;
initial_cutscene_1=-9;
initial_cutscene_2=-8;
small_0=0;
small_1=1;
small_2=4;
all_room_0=2;
all_room_1=3;
all_room_2=5;

player_dead_0=-7;
player_dead_1=-6

automa_gest_camera=initial_cutscene_0;
//coordinate della camera
camera_x=0;
camera_y=0;
camera_target=instance_find(obj_tank_0_boss, 0);

boss_target=instance_find(obj_tank_enemy_boss_middle, 0);
boss_mid_phases=instance_find(obj_boss_mid_phases, 0);

val0=0.1;
c0=0;

alarm[0] = 1;