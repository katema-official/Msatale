sprite_up = image_angle;
sprite_right = image_angle + 90;
sprite_down = image_angle + 180;
sprite_left = image_angle + 270;

sprite_up_right = image_angle - 45;
sprite_down_right = image_angle - 135;
sprite_down_left = image_angle - 225;
sprite_up_left = image_angle - 315;

audio_tank_movement=snd_tank_movement;

/*
if(!audio_is_playing(audio_tank_movement)){
	audio_play_sound(audio_tank_movement, 15, true);	
}

if(audio_is_playing(audio_tank_movement){
	audio_stop_sound(audio_tank_movement);	
}
*/