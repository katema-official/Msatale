x_right_sight=x+96;
x_left_side=x-96;
y_up_side=y-96;
y_down_side=y+96;



if(instance_exists(main)){
	if(point_in_circle(main.x,main.y,x,y,300) && !collision_line(x,y,main.x,main.y,obj_collision_0,false,true)){
		state1=1; //not visible
	}
}

if(position_meeting(x+16,y,obj_collision_0)){
	x=x-1;
}
if(position_meeting(x-16,y,obj_collision_0)){
	x=x+1;
}
if(position_meeting(x,y+16,obj_collision_0)){
	y=y-1;
}
if(position_meeting(x,y-16,obj_collision_0)){
	y=y+1;
}






if(collision_line(x+22,y-16, x+22,y+16, obj_collision_0,false,true) || collision_line(x+22,y-16, x+22,y+16, obj_tank_down_parent,false,true) || collision_line(x+22,y-16, x+22,y+16, obj_tank_down_enemies_parent,false,true)){
	right_wall=true;	
}else{
	right_wall=false;	
}
if(collision_line(x-22,y-16, x-22,y+16, obj_collision_0,false,true) || collision_line(x-22,y-16, x-22,y+16, obj_tank_down_parent,false,true) || collision_line(x-22,y-16, x-22,y+16, obj_tank_down_enemies_parent,false,true)){
	left_wall=true;	
}else{
	left_wall=false;	
}
if(collision_line(x+16,y+22, x-16,y+22, obj_collision_0,false,true) || collision_line(x+16,y+22, x-16,y+22, obj_tank_down_parent,false,true) || collision_line(x+16,y+22, x-16,y+22, obj_tank_down_enemies_parent,false,true)){
	down_wall=true;	
}else{
	down_wall=false;	
}
if(collision_line(x+16,y-22, x-16,y-22, obj_collision_0,false,true) || collision_line(x+16,y-22, x-16,y-22, obj_tank_down_parent,false,true) || collision_line(x+16,y-22, x-16,y-22, obj_tank_down_enemies_parent,false,true)){
	up_wall=true;	
}else{
	up_wall=false;	
}


var coin;

switch(state1){
	case 0:		//not visible
	second_circle_raggio=300;
	if(path_exists(my_path)){
		path_end();	
	}
		switch(state2){
			case 0:		//va verso sinistra
				hspeed=-1;
				vspeed=0;
				
				if(!start_looking_around && !research_lines){
					start_looking_around=true;
					alarm[0] = 300;
				}
				if(start_looking_around && research_lines){
					if(!collision_rectangle(x-22,y_up_side, x+22,y,obj_collision_0,false,true)){
						start_looking_around=false;
						research_lines=false;
						state2 = 2;
					}
					if(!collision_rectangle(x-22,y, x+22,y_down_side,obj_collision_0,false,true)){
						start_looking_around=false;
						research_lines=false;
						state2 = 3;
					}
				}
				
			if(left_wall){
				if(down_wall){
					state2=2; //vai in alto	
				}
				if(up_wall){
					state2=3; //vai in basso	
				}
				if(!up_wall && !down_wall){
					coin = irandom_range(0,1);
					if(coin==0){
						state2 = 2; //vai in alto	
					}else{
						state2 = 3; //vai in basso
					}
				}
			}
			break;
			case 1:			//va verso destra
				hspeed=1;
				vspeed=0;
				
				if(!start_looking_around  && !research_lines){
					start_looking_around=true;
					alarm[0] = 300;
				}
				if(start_looking_around && research_lines){
					if(!collision_rectangle(x-22,y_up_side, x+22,y,obj_collision_0,false,true)){
						start_looking_around=false;
						research_lines=false;
						state2 = 2;
					}
					if(!collision_rectangle(x-22,y, x+22,y_down_side,obj_collision_0,false,true)){
						start_looking_around=false;
						research_lines=false;
						state2 = 3;
					}
				}
				
			if(right_wall){
				if(down_wall){
					state2=2; //vai in alto	
				}
				if(up_wall){
					state2=3; //vai in basso	
				}
				if(!up_wall && !down_wall){
					coin = irandom_range(0,1);
					if(coin==0){
						state2 = 2 //vai in alto	
					}else{
						state2 = 3 //vai in basso
					}
				}
			}
			break;
			case 2:			//va verso l'alto
				vspeed=-1;
				hspeed=0;
				
				if(!start_looking_around  && !research_lines){
					start_looking_around=true;
					alarm[0] = 300;
				}
				if(start_looking_around && research_lines){
					if(!collision_rectangle(x,y-22, x_right_sight,y+22,obj_collision_0,false,true)){
						start_looking_around=false;
						research_lines=false;
						state2 = 1;
					}
					if(!collision_rectangle(x_left_side,y-22, x,y+22,obj_collision_0,false,true)){
						start_looking_around=false;
						research_lines=false;
						state2 = 0;
					}
				}
				
			if(up_wall){
				if(right_wall){
					state2=0; //vai a sinistra
				}
				if(left_wall){
					state2=1; //vai a destra
				}
				if(!right_wall && !left_wall){
					coin = irandom_range(0,1);
					if(coin==0){
						state2 = 0; //vai in alto	
					}else{
						state2 = 1; //vai in basso
					}
				}
			}
			break;
			case 3:			//va verso il basso
				vspeed=1;
				hspeed=0;
				
				if(!start_looking_around  && !research_lines){
					start_looking_around=true;
					alarm[0] = 300;
				}
				if(start_looking_around && research_lines){
					if(!collision_rectangle(x,y-22, x_right_sight,y+22,obj_collision_0,false,true)){
						start_looking_around=false;
						research_lines=false;
						state2 = 1;
					}
					if(!collision_rectangle(x_left_side,y-22, x,y+22,obj_collision_0,false,true)){
						start_looking_around=false;
						research_lines=false;
						state2 = 0;
					}
				}
				
			if(down_wall){
				if(right_wall){
					state2=0; //vai a sinistra
				}
				if(left_wall){
					state2=1; //vai a destra
				}
				if(!right_wall && !left_wall){
					coin = irandom_range(0,1);
					if(coin==0){
						state2 = 0 //vai in alto	
					}else{
						state2 = 1 //vai in basso
					}
				}
			}
			break;
		}
	break;
	
	
	case 1:		
		if(instance_exists(main)){
			if(point_in_circle(main.x,main.y, x, y, second_circle_raggio)){
				hspeed=0;
				vspeed=0;
				i++;
				if(i%2=0){
					second_circle_raggio--;
				}
				if(second_circle_raggio<150){
					second_circle_raggio=150;
				}
				mp_grid_path(grid_2_6,my_path,x,y, main.x,main.y, false);
				path_start(my_path,1,path_action_stop,false);
		
				if((((direction + 360) % 360)<r1 && ((direction + 360) % 360)>0)  ||  (((direction + 360) % 360)<360 && ((direction + 360) % 360)>r8)){
					image_angle = sprite_right;
					image_speed=-1;
				}
				if(((direction + 360) % 360)<r3 && ((direction + 360) % 360)>r2){
					image_angle = sprite_up;
					image_speed=1;
				}
				if(((direction + 360) % 360)<r5 && ((direction + 360) % 360)>r4){
					image_angle = sprite_left;
					image_speed=-1;
				}
				if(((direction + 360) % 360)<r7 && ((direction + 360) % 360)>r6){
					image_angle = sprite_down;
					image_speed=1;
				}
				if(((direction + 360) % 360)<r2 && ((direction + 360) % 360)>r1){
					image_angle = sprite_up_right;
					image_speed=1;
				}
				if(((direction + 360) % 360)<r4 && ((direction + 360) % 360)>r3){
					image_angle = sprite_up_left;
				}
				if(((direction + 360) % 360)<r6 && ((direction + 360) % 360)>r5){
					image_angle = sprite_down_left;
					image_speed=1;
				}
				if(((direction + 360) % 360)<r8 && ((direction + 360) % 360)>r7){
					image_angle = sprite_down_right;
				}
			}else{
				state1=0;
			}
		}else{
			state1=0;
		}
		
		
	break;
	
	
	
}