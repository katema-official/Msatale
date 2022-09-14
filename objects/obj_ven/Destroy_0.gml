repeat(10){
		instance_create_layer(x,y,"Instances",obj_debris);
}
audio_play_sound(snd_hurt,1,false);