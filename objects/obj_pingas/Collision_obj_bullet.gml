with(other) {instance_destroy();}

if(pingas_last_health_bar!=undefined){
	instance_destroy(pingas_last_health_bar);
}

if(pingas_health>1){
	audio_play_sound(snd_pingas,1,false);
	var inst = instance_create_layer(x,y-36,"Instances",obj_pingas_health);
	inst.image_xscale=3;
	inst.image_yscale=3;
	inst.owner = id;
	pingas_last_health_bar=inst;
	switch(pingas_health){
		case 10:
			inst.image_index=0;
		break;
		case 9:
			inst.image_index=1;
		break;
		case 8:
			inst.image_index=2;
		break;
		case 7:
			inst.image_index=3;
		break;
		case 6:
			inst.image_index=4;
		break;
		case 5:
			inst.image_index=5;
		break;
		case 4:
			inst.image_index=6;
		break;
		case 3:
			inst.image_index=7;
		break;
		case 2:
			inst.image_index=8;
		break;
	}
pingas_health--;
}else{
	var inst = instance_create_layer(x,y-36,"Instances",obj_pingas_health);
	inst.image_xscale=3;
	inst.image_yscale=3;
	inst.image_index=9;
	inst.owner = id;
	pingas_last_health_bar=inst;
	instance_destroy();
}