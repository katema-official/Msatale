if(!start_step) exit;


if(initial_alpha_fade==0){
	image_alpha += fading_factor;
	if(image_alpha>=1){
		instance_destroy();
	}
}else if(initial_alpha_fade==1){
	image_alpha -= fading_factor;
	if(image_alpha<=0){
		instance_destroy();
	}
}