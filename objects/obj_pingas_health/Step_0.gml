image_alpha-=0.03;
if(instance_exists(owner)){
	y=owner.y-36;
	x=owner.x;
}
if(image_alpha<=0){
	instance_destroy();
}