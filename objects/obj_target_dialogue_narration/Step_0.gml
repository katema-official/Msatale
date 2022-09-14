if(start_fade_out==true && image_alpha >= 0){
	image_alpha -= 0.02;
}

if(image_alpha<=0){
	instance_destroy();
}

if(start_fade_in==true && image_alpha>=0.01){
	image_alpha += 0.02;
}
if(image_alpha>=1){
	start_fade_in=false;
}