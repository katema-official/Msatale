if(its_left_wing==true){
	x=obj_manu_body.x_manu_l_wing;
	y=obj_manu_body.y_manu_l_wing;
}else if(its_right_wing==true){
	x=obj_manu_body.x_manu_r_wing;
	y=obj_manu_body.y_manu_r_wing;
}





if(room==room_manu_2){

if(its_right_wing){

switch(state_wing_speed){
	case init:
		curr_vel=0;
		state_wing_speed=max_vel_2;
	break;
		
	case basso:
		curr_vel=0;
		state_wing_speed=first_mov;
	break;
	
	case first_mov:
		curr_vel-=increase_wing_factor;
		image_angle+=curr_vel;
		if(curr_vel<=-image_angle_speed_max){
			curr_vel=-image_angle_speed_max;
			state_wing_speed=max_vel_1;
		}
	break;
		
	case max_vel_1:
		if(curr_vel!=-image_angle_speed_max){
			curr_vel=-image_angle_speed_max;	
		}
		state_wing_speed=second_mov;
	break;
	
	case second_mov:
		curr_vel+=increase_wing_factor;
		image_angle+=curr_vel;
		if(curr_vel>=0){
			curr_vel=0;
			state_wing_speed=alto;
		}
	
	break;
	
	case alto:
		curr_vel=0;
		state_wing_speed=terzo_mov;
	break;
		
	case terzo_mov:
		curr_vel+=increase_wing_factor;
		image_angle+=curr_vel;
		if(curr_vel>=image_angle_speed_max){
			curr_vel=image_angle_speed_max;
			state_wing_speed=max_vel_2;
		}
	break;
	
	case max_vel_2:
		if(curr_vel!=image_angle_speed_max){
			curr_vel=image_angle_speed_max;	
		}
		state_wing_speed=fourth_mov;
	break;
		
	case fourth_mov:
		curr_vel-=increase_wing_factor;
		image_angle+=curr_vel;
		if(curr_vel<=0){
			curr_vel=0;
			state_wing_speed=basso;
		}
	break;
}

}

if(its_left_wing){
	
switch(state_wing_speed){
	case init:
		curr_vel=0;
		state_wing_speed=max_vel_1;
	break;
		
	case basso:
		curr_vel=0;
		state_wing_speed=first_mov;
	break;
	
	case first_mov:
		curr_vel-=increase_wing_factor;
		image_angle+=curr_vel;
		if(curr_vel<=-image_angle_speed_max){
			curr_vel=-image_angle_speed_max;
			state_wing_speed=max_vel_1;
		}
	break;
		
	case max_vel_1:
		if(curr_vel!=-image_angle_speed_max){
			curr_vel=-image_angle_speed_max;	
		}
		state_wing_speed=second_mov;
	break;
	
	case second_mov:
		curr_vel+=increase_wing_factor;
		image_angle+=curr_vel;
		if(curr_vel>=0){
			curr_vel=0;
			state_wing_speed=alto;
		}
	
	break;
	
	case alto:
		curr_vel=0;
		state_wing_speed=terzo_mov;
	break;
		
	case terzo_mov:
		curr_vel+=increase_wing_factor;
		image_angle+=curr_vel;
		if(curr_vel>=image_angle_speed_max){
			curr_vel=image_angle_speed_max;
			state_wing_speed=max_vel_2;
		}
	break;
	
	case max_vel_2:
		if(curr_vel!=image_angle_speed_max){
			curr_vel=image_angle_speed_max;	
		}
		state_wing_speed=fourth_mov;
	break;
		
	case fourth_mov:
		curr_vel-=increase_wing_factor;
		image_angle+=curr_vel;
		if(curr_vel<=0){
			curr_vel=0;
			state_wing_speed=basso;
		}
	break;
}

}




}






