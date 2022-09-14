x_right_sight=x+96;
x_left_side=x-96;
y_up_side=y-96;
y_down_side=y+96;








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
/*	case 1:		//visible
			vspeed=0;
			hspeed=0;
			var dir = point_direction(x,y, main.x,main.y);
			dir = dir % 360;
			if((dir>315 && dir<=360) || (dir>=0 && dir<45)){
				hspeed=1;	
				vspeed=0;
			}
			if(dir>45 && dir<135){
				vspeed=-1;	
				hspeed=0;
			}
			if(dir>135 && dir<225){
				hspeed=-1;	
				vspeed=0;
			}
			if(dir>225 && dir<315){
				vspeed=1;
				hspeed=0;
			}
			//vorrei dirgli questo: se non ci sono muri nel mezzo va tranquillo. Altrimenti deve capire dove è il muro
			//che gli impedisce di muoversi. se a dx o sx, andrà o in alto o in basso. Vale il viceversa. La point_direction
			//mi dirà se muovermi in alto o in basso, a destra o a sinistra
			//...per ora facciamo una cosa più semplice
	
	
	break;
	
	
	
	*/
	
	
	
}