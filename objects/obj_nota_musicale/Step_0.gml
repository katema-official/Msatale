if(tmp==0){
	image_angle+=rotation_speed;	
}else{
	image_angle-=rotation_speed;	
}

vspeed=speed_down;

c1++;
if(c1>=5){
	image_alpha-=1/steps_life;
}

if(image_alpha<=0){
	instance_destroy();	
}
