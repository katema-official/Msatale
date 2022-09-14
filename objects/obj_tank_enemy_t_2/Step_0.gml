
x=unique_base.x;
y=unique_base.y;
if(instance_exists(obj_tank_0)){
	if(point_in_circle(main.x,main.y,x,y,300) && !collision_line(x,y,main.x,main.y,obj_collision_0,false,true)){
		state1=1;	
	}else{
		state1=0;
	}
}

if(unique_base.state1==1){
	image_angle = point_direction(x,y,main.x,main.y);
}

switch(state1){
	case 0:
		//is_shooting=false;
		if(coin==0){
			image_angle+=1;
		}else{
			image_angle-=1;
		}
	break;
	case 1:
		if(instance_exists(obj_tank_0)){
			
			image_angle = point_direction(x,y,main.x,main.y);
			if(!is_shooting){
				inst = instance_create_layer(x + lengthdir_x(15,image_angle),y + lengthdir_y(15,image_angle),"Instances",obj_bullet_2);
				inst.direction = image_angle;
				inst.image_angle = image_angle;
				inst.speed = 3;
				is_shooting=true;
				alarm[0] = irandom_range(100,120);
			}
			
		}else{
			state1=0;
		}
	
	
	
	
	
	
}

/*

x1=x+lengthdir_x(sight_distance,start_position_angle);
y1=y+lengthdir_y(sight_distance,start_position_angle);
x2=x+lengthdir_x(sight_distance,start_position_angle+90);
y2=y+lengthdir_y(sight_distance,start_position_angle+90);

if(instance_exists(main)){
	switch(start_position_angle){
		case 270-45:
			if(point_in_triangle(main.x,main.y,x,y,x1,y1,x2,y2)){
				main_is_visible=true;	
			}else{
				main_is_visible=false;
			}
		break;
		case 90-45:
			if(point_in_triangle(main.x,main.y,x,y,x1,y1,x2,y2)){
				main_is_visible=true;	
			}else{
				main_is_visible=false;
			}
		break;
		case 0-45:
			if(point_in_triangle(main.x,main.y,x,y,x1,y1,x2,y2)){
				main_is_visible=true;	
			}else{
				main_is_visible=false;
			}
		break;
		case 180-45:
			if(point_in_triangle(main.x,main.y,x,y,x1,y1,x2,y2)){
				main_is_visible=true;	
			}else{
				main_is_visible=false;
			}
		break;
	
	}
}


if(!instance_exists(main)){
	state=0;	
}

switch(state){
	case 0:
		if(image_angle<start_position_angle+90){
			image_angle++;
		}
		if(image_angle==start_position_angle+90){
			state = 1;	
		}
		if(main_is_visible){
			state = 2	
		}
	break;
	case 1:
		if(image_angle>start_position_angle){
			image_angle--;
		}
		if(image_angle==start_position_angle){
			state = 0;	
		}
		if(main_is_visible){
			state = 2	
		}
	break;
	case 2:
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
	break;
}









