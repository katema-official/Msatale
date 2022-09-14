x_head_katema=x;
y_head_katema=y-84;




switch(state_movement_manu_body){
	
	case init:
		state_movement_manu_body=max_vspeed_pos;
	break;
	
	case max_vspeed_pos:
		if(vspeed!=speed_at_center){
			vspeed=speed_at_center;	
		}
		state_movement_manu_body=from_center_to_low;
	break;
	
	case from_center_to_low:
		vspeed-=speed_de_acceleration;
		if(vspeed<=0){
			vspeed=0;
			state_movement_manu_body=low;
		}
	break;
	
	case low:
		state_movement_manu_body=from_low_to_center;
	break;
	
	case from_low_to_center:
		vspeed-=speed_de_acceleration;
		if(vspeed<=-speed_at_center){
			vspeed=-speed_at_center;
			state_movement_manu_body=max_vspeed_neg;
		}
	break;
	
	case max_vspeed_neg:
		if(vspeed!=-speed_at_center){
			vspeed=-speed_at_center;	
		}
		state_movement_manu_body=from_center_to_high;
	break;
	
	case from_center_to_high:
		vspeed+=speed_de_acceleration;
		if(vspeed>=0){
			vspeed=0;
			state_movement_manu_body=high;
		}
	break;
	
	case high:
		state_movement_manu_body=from_high_to_center;
	break;
	
	case from_high_to_center:
		vspeed+=speed_de_acceleration;
		if(vspeed>=speed_at_center){
			vspeed=speed_at_center;
			state_movement_manu_body=max_vspeed_pos;
		}
	break;
	
}