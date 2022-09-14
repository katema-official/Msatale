speed=min(speed + 0.005*this_speed,1.5*(this_speed*2));
move_wrap(true,true,sprite_height/2);


if(instance_exists(target)){
	var pointdir = point_direction(x,y,target.x,target.y);
	direction += sin(degtorad(pointdir - direction))*rspeed;
	image_angle=direction +180;
}

if(!instance_exists(obj_richardson)){
	instance_destroy();
	scr_debris_creation(x,y);;
}