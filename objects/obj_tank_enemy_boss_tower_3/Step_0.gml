event_inherited();

x=unique_base.x3;
y=unique_base.y3;

x1=x+lengthdir_x(37,image_angle);
y1=y+lengthdir_y(37,image_angle);
x2=x+lengthdir_x(37,image_angle+90);
y2=y+lengthdir_y(37,image_angle+90);
x3=x+lengthdir_x(37,image_angle+180);
y3=y+lengthdir_y(37,image_angle+180);
x4=x+lengthdir_x(37,image_angle+270);
y4=y+lengthdir_y(37,image_angle+270);




switch(system.phase){
	case 1:
		image_angle+=0.25;
		switch(state_quad_cannone){
			case rimetti_a_posto_le_variabili:
				i1=0;
				i2=0;
				state_quad_cannone=start;
			break;
			case start:
				i1++;
				if(i1>=60){
					state_quad_cannone=spara_1;	
				}
			break;
			case spara_1:
				i2=0;
				b1 = instance_create_depth(x1,y1,-110,obj_boss_bullet);
				b2 = instance_create_depth(x2,y2,-110,obj_boss_bullet);
				b3 = instance_create_depth(x3,y3,-110,obj_boss_bullet);
				b4 = instance_create_depth(x4,y4,-110,obj_boss_bullet);
				b1.direction=point_direction(x,y,x1,y1);
				b1.speed=3;
				b2.direction=point_direction(x,y,x2,y2);
				b2.speed=3;
				b3.direction=point_direction(x,y,x3,y3);
				b3.speed=3;
				b4.direction=point_direction(x,y,x4,y4);
				b4.speed=3;
					
				state_quad_cannone=ricarica;	
			break;
			case ricarica:
				i2++;
				if(i2>=120){
					state_quad_cannone=spara_1;	
				}
			break;
			
			
		}
	
		
	break;
}














