//x=obj_manu_body.x_head;
//y=obj_manu_body.y_head;

x_manu_laser_eye=x+4*image_xscale+image_xscale/2;
y_manu_laser_eye=y;

if(room==room_manu_1 || obj_manu_control.restore_characters_attitude){

switch(state_movement_manu_head){
	
	case init:
		state_movement_manu_head=max_vspeed_pos;
	break;
	
	case max_vspeed_pos:
		if(vspeed!=speed_at_center){
			vspeed=speed_at_center;	
		}
		state_movement_manu_head=from_center_to_low;
	break;
	
	case from_center_to_low:
		vspeed-=speed_de_acceleration;
		if(vspeed<=0){
			vspeed=0;
			state_movement_manu_head=low;
		}
	break;
	
	case low:
		state_movement_manu_head=from_low_to_center;
	break;
	
	case from_low_to_center:
		vspeed-=speed_de_acceleration;
		if(vspeed<=-speed_at_center){
			vspeed=-speed_at_center;
			state_movement_manu_head=max_vspeed_neg;
		}
	break;
	
	case max_vspeed_neg:
		if(vspeed!=-speed_at_center){
			vspeed=-speed_at_center;	
		}
		state_movement_manu_head=from_center_to_high;
	break;
	
	case from_center_to_high:
		vspeed+=speed_de_acceleration;
		if(vspeed>=0){
			vspeed=0;
			state_movement_manu_head=high;
		}
	break;
	
	case high:
		state_movement_manu_head=from_high_to_center;
	break;
	
	case from_high_to_center:
		vspeed+=speed_de_acceleration;
		if(vspeed>=speed_at_center){
			vspeed=speed_at_center;
			state_movement_manu_head=max_vspeed_pos;
		}
	break;
	
}







if(keyboard_check_pressed(vk_space)){
	start_face_change=true;
}

if(start_face_change){
	if(counter_temp==-7){
		image_index++;
	}
	counter_temp++;
	if(counter_temp==98){
		image_index++;	
	}
	if(counter_temp==216){
		image_index++;	
	}
	if(counter_temp==216+60){
		image_index++;	
	}
	if(counter_temp==216+60+45){
		image_index++;
	}
	if(counter_temp==216+60+45+30){
		image_index++;	
	}
	if(counter_temp==216+60+45+30+30){
		image_index++;	
	}
}

}


if(obj_manu_control.restore_characters_attitude){
	image_index=11;	
}
