


switch(state_red_bg){
	
	case init:
		vel_scale=0;
		state_red_bg=su;
	break;
	case su:
		if(vel_scale!=0){
			vel_scale=0;
		}
		if(image_yscale!=min_scale){
			image_yscale=min_scale;
		}
		state_red_bg=da_su_a_centro;
	break;
	case da_su_a_centro:
		vel_scale=vel_scale+speed_up_scale;
		image_yscale+=vel_scale;
		if(vel_scale>=max_vel_speed){
			vel_scale=max_vel_speed;
			state_red_bg=centro_1;
		}
	break;
	case centro_1:
		if(vel_scale!=max_vel_speed){
			vel_scale=max_vel_speed;
		}
		state_red_bg=da_centro_a_giu;
	break;
	case da_centro_a_giu:
		vel_scale=vel_scale-speed_up_scale;
		image_yscale+=vel_scale;
		if(vel_scale<=0){
			vel_scale=0;
			state_red_bg=giu;
		}
	break;
	case giu:
		if(vel_scale!=0){
			vel_scale=0;
		}
		state_red_bg=da_giu_a_centro;
	break;
	case da_giu_a_centro:
		vel_scale=vel_scale-speed_up_scale;
		image_yscale+=vel_scale;
		if(vel_scale<=-max_vel_speed){
			vel_scale=-max_vel_speed;
			state_red_bg=centro_2;
		}
	break;
	case centro_2:
		if(vel_scale!=-max_vel_speed){
			vel_scale=-max_vel_speed;
		}
		state_red_bg=da_centro_a_su
	break;
	case da_centro_a_su:
		vel_scale=vel_scale+speed_up_scale;
		image_yscale+=vel_scale;
		if(vel_scale>=0){
			vel_scale=0;
			state_red_bg=su;
		}
	break;
}
	
	
