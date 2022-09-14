x=obj_manu_body.x_left_arm;
y=obj_manu_body.y_left_arm;




//curr_vel=curr_vel+increase_l_arm_factor;
//image_angle-=curr_vel;

if(room==room_manu_1 || obj_manu_control.restore_characters_attitude){

switch(state_left_arm_speed){
	case init:
		curr_vel=0;
		state_left_arm_speed=max_vel_2;
	break;
		
	case attaccato_al_corpo:
		curr_vel=0;
		state_left_arm_speed=first_mov;
	break;
	
	case first_mov:
		curr_vel-=increase_l_arm_factor;
		image_angle+=curr_vel;
		if(curr_vel<=-image_angle_speed_max){
			curr_vel=-image_angle_speed_max;
			state_left_arm_speed=max_vel_1;
		}
	break;
		
	case max_vel_1:
		if(curr_vel!=-image_angle_speed_max){
			curr_vel=-image_angle_speed_max;	
		}
		state_left_arm_speed=second_mov;
	break;
	
	case second_mov:
		curr_vel+=increase_l_arm_factor;
		image_angle+=curr_vel;
		if(curr_vel>=0){
			curr_vel=0;
			state_left_arm_speed=lontano_dal_corpo;
		}
	
	break;
	
	case lontano_dal_corpo:
		curr_vel=0;
		state_left_arm_speed=terzo_mov;
	break;
		
	case terzo_mov:
		curr_vel+=increase_l_arm_factor;
		image_angle+=curr_vel;
		if(curr_vel>=image_angle_speed_max){
			curr_vel=image_angle_speed_max;
			state_left_arm_speed=max_vel_2;
		}
	break;
	
	case max_vel_2:
		if(curr_vel!=image_angle_speed_max){
			curr_vel=image_angle_speed_max;	
		}
		state_left_arm_speed=fourth_mov;
	break;
		
	case fourth_mov:
		curr_vel-=increase_l_arm_factor;
		image_angle+=curr_vel;
		if(curr_vel<=0){
			curr_vel=0;
			state_left_arm_speed=attaccato_al_corpo;
		}
	break;
}

}



