if(instance_exists(orbit_target)){
	x=orbit_target.x + lengthdir_x(orbit_length, orbit_place); 
	y=orbit_target.y + lengthdir_y(orbit_length, orbit_place); 
	orbit_place+=orbit_speed;
	image_angle=orbit_place;
}else{
	instance_destroy();
}