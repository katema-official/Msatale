//draw_text(x+40,y+40,string(obj_manu_l_arm.state_left_arm_speed));
//draw_text(room_width-40,y+40,string(obj_manu_r_arm.state_right_arm_speed));

draw_sprite_ext(spr_ut_battle_buttons,0,32,room_height-10,1,1,0,c_white,1);
draw_sprite_ext(spr_ut_battle_buttons,1,32+110+45,room_height-10,1,1,0,c_white,1);
draw_sprite_ext(spr_ut_battle_buttons,2,room_width-32-110-45-110,room_height-10,1,1,0,c_white,1);
draw_sprite_ext(spr_ut_battle_buttons,3,room_width-32-110,room_height-10,1,1,0,c_white,1);



//draw_text(10,40,"vel_laser"+string(obj_manu_laser_eye.vel_laser));
//draw_text(10,20,"image_anglee"+string(obj_manu_laser_eye.image_anglee));
//draw_text(10,80,"state: "+string(obj_manu_laser_eye.state_laser_eye));
//draw_text(10,100,"state2: "+string(obj_manu_laser_eye.state_alpha_laser));

//draw_text(10,120,"image_angle:\n "+string(obj_manu_laser_eye.image_angle+360%360));

if(instance_exists(obj_katema_head)){
	/*
	draw_text(10,100,"state1: "+string(obj_katema_head.state_k_vspeed));
	draw_text(10,120,"state2: "+string(obj_katema_head.state_k_hspeed));
	draw_text(10,140,"state_katema_oval:\n "+string(obj_katema_head.state_katema_oval));
	draw_text(10,180,"hspeed: "+string(obj_katema_head.curr_hspeed_to_sum));
	draw_text(10,200,"vspeed: "+string(obj_katema_head.curr_vspeed_to_sum));
	
	
	draw_text(10,200,"max_vspeed: "+string(obj_katema_head.max_vspeed));
	draw_text(10,220,"dummy_vspeed: "+string(obj_katema_head.dummy_vspeed));
	draw_text(10,240,"acc_fact_vspeed: "+string(obj_katema_head.acceleration_factor_vspeed));
	draw_text(10,260,"vspeed: "+string(obj_katema_head.vspeed));
	if(obj_katema_head.hspeed!=0){
		draw_text(10,280,"hspeed: "+string(obj_katema_head.hspeed));
	}
	draw_text(10,300,"t: "+string(obj_katema_head.t));
	draw_text(10,340,"state_k_vspeed: "+string(obj_katema_head.state_k_vspeed));
	draw_text(10,360,"state_k_hspeed: "+string(obj_katema_head.state_k_hspeed));
	*/
}