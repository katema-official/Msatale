x=obj_manu_head.x_manu_laser_eye;
y=obj_manu_head.y_manu_laser_eye;

switch(state_laser_eye){
	case init:
		image_alpha=0;
		state_laser_eye=hor_1;
	break;
	case hor_1:
		if(actual_speed!=speed_at_center){
			actual_speed=speed_at_center;
		}
		state_laser_eye=from_hor_to_low;
	break;
	case from_hor_to_low:
		actual_speed-=speed_de_acceleration;
		image_angle-=actual_speed;
		if(actual_speed<=0){
			state_laser_eye=low;	
		}
	break;
	case low:
		if(actual_speed!=0){
			actual_speed=0;
		}
		state_laser_eye=from_low_to_hor;
	break;
	case from_low_to_hor:
		actual_speed-=speed_de_acceleration;
		image_angle-=actual_speed;
		if(actual_speed<=-speed_at_center){
			state_laser_eye=hor_2;	
		}
	break;
	case hor_2:
		if(actual_speed!=-speed_at_center){
			actual_speed=-speed_at_center;
		}
		state_laser_eye=from_hor_to_up;
	break;
	case from_hor_to_up:
		actual_speed+=speed_de_acceleration;
		image_angle-=actual_speed;
		if(actual_speed>=0){
			state_laser_eye=up;	
		}
	break;
	case up:
		if(actual_speed!=0){
			actual_speed=0;
		}
		state_laser_eye=from_up_to_hor;
	break;
	case from_up_to_hor:
		actual_speed+=speed_de_acceleration;
		image_angle-=actual_speed;
		if(actual_speed>=speed_at_center){
			state_laser_eye=hor_1;	
		}
	break;
	
}



switch(state_alpha_laser){
	case init2:
		state_alpha_laser=set_xscale_alpha_to_0;
	break;
	case set_xscale_alpha_to_0:
		image_xscale=0;
		image_alpha=0;
		c2++;
		if(c2>=time_to_blind){
			state_alpha_laser=alpha_equals_1;
		}
	break;
	case alpha_equals_1:
		c2=0;
		image_alpha=1;
		state_alpha_laser=laser_fade_out;
	break;
	case laser_fade_out:
		image_alpha-=image_alpha_deceleration
		image_xscale+=x_scale_acceleration;
		if(image_alpha<=0){
			state_alpha_laser=set_xscale_alpha_to_0;	
		}
	break;
	
}



