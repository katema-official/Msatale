if(x>xprevious){
	image_angle = sprite_right;
	image_speed=-1;
}
if(x<xprevious){
	image_angle = sprite_left;
	image_speed=-1;
}
if(y>yprevious){
	image_angle = sprite_down;
	image_speed=1;
}
if(y<yprevious){
	image_angle = sprite_up;
	image_speed=1;
}