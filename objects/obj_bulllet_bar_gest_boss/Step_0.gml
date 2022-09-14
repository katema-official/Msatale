//lo scaling della barra
b_bar_in_boss_level.image_xscale=camera_get_view_height(view_camera[0])/160;
b_bar_in_boss_level.image_yscale=camera_get_view_height(view_camera[0])/160;

//dove voglio che sia
b_bar_x_to=camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - camera_get_view_height(view_camera[0])/16;
b_bar_y_to=camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;
b_bar_in_boss_level.x=b_bar_x_to;
b_bar_in_boss_level.y=b_bar_y_to;

//che sprite deve mostrare
if(instance_exists(tank_target)){
	b_bar_in_boss_level.image_index=tank_target.bullet_pot;
}


//faccio sostanzialmente la stessa cosa per la barra della vita del boss (1)
health_bar_boss_margin_left.image_xscale=camera_get_view_height(view_camera[0])/480;
health_bar_boss_margin_left.image_yscale=camera_get_view_height(view_camera[0])/480;
health_bar_boss_margin_left.x=camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - boss_health_points_total*(camera_get_view_height(view_camera[0])/480)/2 - sprite_get_width(spr_health_bar_boss_margin)*(camera_get_view_height(view_camera[0])/480);
health_bar_boss_margin_left.y=camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/48 + (sprite_get_height(spr_health_bar_boss_margin)/2) * (camera_get_view_height(view_camera[0])/480);

//(2)
health_bar_boss_middle.image_xscale=(boss_health_points_total-margin_health_points*2)* camera_get_view_height(view_camera[0])/480;
health_bar_boss_middle.image_yscale=camera_get_view_height(view_camera[0])/480;
health_bar_boss_middle.x=health_bar_boss_margin_left.x + sprite_get_width(spr_health_bar_boss_margin)*camera_get_view_height(view_camera[0])/480;
health_bar_boss_middle.y=health_bar_boss_margin_left.y

//(3)
health_bar_boss_margin_right.image_xscale=camera_get_view_height(view_camera[0])/480;
health_bar_boss_margin_right.image_yscale=camera_get_view_height(view_camera[0])/480;
health_bar_boss_margin_right.x=health_bar_boss_margin_left.x + sprite_get_width(spr_health_bar_boss_margin)*camera_get_view_height(view_camera[0])/480 + ((boss_health_points_total-margin_health_points*2)* camera_get_view_height(view_camera[0])/480) + + sprite_get_width(spr_health_bar_boss_margin_1)*camera_get_view_height(view_camera[0])/480//camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + boss_health_points_total*(camera_get_view_height(view_camera[0])/480)/2 + sprite_get_width(spr_health_bar_boss_margin)*(camera_get_view_height(view_camera[0])/480);
health_bar_boss_margin_right.y=camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/48 + (sprite_get_height(spr_health_bar_boss_margin)/2) * (camera_get_view_height(view_camera[0])/480);



//ora mi occupa della barra della vita vera e propria, non del contorno
health_bar_boss.image_xscale=boss_target.boss_current_health*camera_get_view_height(view_camera[0])/480;
health_bar_boss.image_yscale=camera_get_view_height(view_camera[0])/480;
health_bar_boss.x=health_bar_boss_margin_left.x + sprite_get_width(spr_health_bar_boss_margin)*camera_get_view_height(view_camera[0])/480 - margin_health_points*camera_get_view_height(view_camera[0])/480;
health_bar_boss.y=health_bar_boss_margin_left.y;



//e ne cambio il colore se ce n'è bisogno
if(boss_target.boss_current_health>boss_target.boss_health_for_phase_2){
	health_bar_boss.image_index=0;
}
if(boss_target.boss_current_health>boss_target.boss_health_for_phase_3 && boss_target.boss_current_health<=boss_target.boss_health_for_phase_2){
	health_bar_boss.image_index=1;
}
if(boss_target.boss_current_health<=boss_target.boss_health_for_phase_3){
	health_bar_boss.image_index=2;
}




/*
if(camera_target.automa_gest_camera==camera_target.small_1){
	b_bar_in_boss_level.image_xscale=3;
	b_bar_in_boss_level.image_yscale=3;
	b_bar_x_to=camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 30;
	b_bar_y_to=camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;
	b_bar_in_boss_level.x=b_bar_x_to;
	b_bar_in_boss_level.y=b_bar_y_to;
	b_bar_in_boss_level.image_index=tank_target.bullet_pot;
}else if(camera_target.automa_gest_camera==camera_target.all_room_1){
	b_bar_in_boss_level.image_xscale=6;
	b_bar_in_boss_level.image_yscale=6;
	b_bar_x_to=camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60;
	b_bar_y_to=camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;
	b_bar_in_boss_level.x=b_bar_x_to;
	b_bar_in_boss_level.y=b_bar_y_to;
	b_bar_in_boss_level.image_index=tank_target.bullet_pot;
}












