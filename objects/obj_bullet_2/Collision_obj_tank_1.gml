if(hitbox_active==false) exit;
instance_destroy();
with(other){
	scr_debris_creation(x,y);
	instance_destroy();
	scr_debris_creation(unique_base.x,unique_base.y);
	instance_destroy(unique_base);
}