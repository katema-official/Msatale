x_right_arm=x+20*image_xscale;
y_right_arm=y-22*image_yscale;

x_left_arm=x-20*image_xscale;
y_left_arm=y-22*image_yscale;

x_head=x;
y_head=y-49*image_yscale;

x_leg=x-2;
y_leg=y+28*image_yscale;

x_manu_r_wing=x+18;
y_manu_r_wing=y-16;
x_manu_l_wing=x-18;
y_manu_l_wing=y-16;





if(room==room_manu_1 || obj_manu_control.restore_characters_attitude){

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

}