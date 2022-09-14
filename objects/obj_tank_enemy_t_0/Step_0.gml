
x=unique_base.x;
y=unique_base.y;


if(look_down){
	var tmp = tan(degtorad(start_position_angle)) * (-1);
	start_position_angle_2 = (darctan((tmp))+360) % 360;
	distance=sight_distance/sin(degtorad(start_position_angle)); 
}

if(look_up){
	var tmp = 90-start_position_angle;
	start_position_angle_2 = 90+abs(tmp);
	distance=sight_distance/sin(degtorad(start_position_angle)); 
}

if(look_right){
	var tmp = sin(degtorad(start_position_angle)) * (-1);
	start_position_angle_2 = (darcsin((tmp)) +360) % 360;
	distance=sight_distance/cos(degtorad(start_position_angle)); 
}

if(look_left){
	var tmp = 180-start_position_angle;
	start_position_angle_2 = 180+abs(tmp);
	distance=sight_distance/cos(degtorad(start_position_angle)); 
}


if(angle_start){
	angle_start=false;
	image_angle=start_position_angle;
}

x1=x+lengthdir_x(abs(distance),start_position_angle);
y1=y+lengthdir_y(abs(distance),start_position_angle);
x2=x+lengthdir_x(abs(distance),start_position_angle_2);
y2=y+lengthdir_y(abs(distance),start_position_angle_2);

if(instance_exists(main)){
	if(point_in_triangle(main.x,main.y,x,y,x1,y1,x2,y2) && !collision_line(x,y, main.x,main.y, obj_collision_0,false,true)){
		main_is_visible=true;	
	}else{
		main_is_visible=false;
	}
}




switch(state){
	case 0:
		if(!look_right){
			if(image_angle<start_position_angle_2){
				image_angle++;
			}
			if(image_angle==start_position_angle_2){
				state = 1;	
			}
		}else{
			image_angle--;
			if(((image_angle + 360) % 360)==start_position_angle_2){
				state = 1;	
			}
		}
		
		if(main_is_visible){
			state = 2;
		}
	break;
	case 1:
		if(!look_right){
			if(image_angle>start_position_angle){
				image_angle--;
			}
			if(image_angle==start_position_angle){
				state = 0;	
			}
		}else{
			image_angle++;	
			if(((image_angle +360) % 360)==start_position_angle){
				state = 0;	
			}
		}
		
		if(main_is_visible){
			state = 2;	
		}
	break;
	case 2:
		if(!instance_exists(main)){
			main_is_visible=false;
			image_angle = start_position_angle;
			state=0;	
		}else{
	
			image_angle = point_direction(x,y,main.x,main.y);
			if(!is_shooting){
				inst = instance_create_layer(x + lengthdir_x(15,image_angle),y + lengthdir_y(15,image_angle),"Instances",obj_bullet_2);
				inst.direction = image_angle;
				inst.image_angle = image_angle;
				inst.speed = 3;
				is_shooting=true;
				alarm[0] = irandom_range(100,120);
			}
			if(!main_is_visible){
				image_angle = start_position_angle;
				state = 0;
			
			}
		
		}
		
	break;
}









