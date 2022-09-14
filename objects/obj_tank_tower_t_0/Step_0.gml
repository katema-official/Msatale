
x=unique_base.x;
y=unique_base.y;


//xx = lengthdir_x(mouse_x - x, image_angle);
//yy = lengthdir_y(mouse_y - y, image_angle);
if(side==0){
	image_angle +=1;
}else{
	image_angle -=1;
}

if((image_angle<10 && image_angle>=0) || (image_angle>350 && image_angle<=360) || (image_angle<100 && image_angle>80) || (image_angle>170 && image_angle<190) || (image_angle>260 && image_angle<280)){
	g5 = true;	
}else{
	g5 = false;	
}

if(image_angle==360 && side==0){
	image_angle = 0;	
}
if(image_angle==0 && side==1){
	image_angle = 360;	
}



if(guard && !g5){ 
	inst = instance_create_layer(x + lengthdir_x(15,image_angle),y + lengthdir_y(15,image_angle),"Instances",obj_bullet_2);
	inst.direction = image_angle;
	inst.image_angle = image_angle;
	inst.speed = 3;
	guard=false;
	alarm[0] = irandom_range(100,120);
}