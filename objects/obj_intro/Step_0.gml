if(keyboard_check_pressed(vk_space)){
	if(room==rm_intro){
		fade_current = instance_create_depth(room_width/2,room_height/2,-9999, obj_fade);
		fade_exists = true;
		fade_text = 1;
		var cond = audio_is_playing(Undertale_OST_001___Once_Upon_A_Time);
		if(cond==true){
			audio_sound_gain(Undertale_OST_001___Once_Upon_A_Time, 0, 3000);
		}
		var cond2 = audio_is_playing(Undertale___Gaster_s_Theme);
		if(cond2==true){
			audio_sound_gain(Undertale___Gaster_s_Theme, 0, 3000);
		}
	}
}

if(fade_exists==true){
	fade_text -= 0.005555556;
	draw_set_alpha(fade_text);
}

if(fade_exists==true && fade_current.image_alpha>=1){
	if(room==rm_intro){
		room_goto(rm_logo);
	}
}