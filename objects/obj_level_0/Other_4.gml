if(room==rm_level_0){
	if(audio_is_playing(msc_song)) audio_stop_sound(msc_song);
	audio_play_sound(msc_song,2,true);
	repeat(6){
		var xx = choose(
		irandom_range(0,room_width*0.3),
		irandom_range(room_width*0.7,room_width));
		var yy = choose(
		irandom_range(0,room_height*0.3),
		irandom_range(room_height*0.7,room_height));
		instance_create_layer(xx,yy,"Instances",obj_ven);
	}
	
	alarm[0] = 240;
	//alarm[2] = irandom_range(900,1200);
	//alarm[3] = irandom_range(600,900);
	//alarm[4] = irandom_range(2700,3000);
	//alarm[5] = irandom_range(3300,3600);
}