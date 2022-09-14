if(!has_bounced){
	if(place_meeting(x,y-2,obj_collision_0)){
		vspeed = -vspeed;
		has_bounced=true;
		audio_play_sound(sound_bounce, 20, false);
	}
	if(place_meeting(x,y+2,obj_collision_0)){
		vspeed = -vspeed;
		has_bounced=true;
		audio_play_sound(sound_bounce, 20, false);
	}
	if(place_meeting(x-2,y,obj_collision_0)){
		hspeed = -hspeed;
		has_bounced=true;
		audio_play_sound(sound_bounce, 20, false);
	}
	if(place_meeting(x+2,y,obj_collision_0)){
		hspeed = -hspeed;
		has_bounced=true;
		audio_play_sound(sound_bounce, 20, false);
	}
}else{
	if(place_meeting(x,y-2,obj_collision_0) || place_meeting(x,y+2,obj_collision_0) || place_meeting(x-2,y,obj_collision_0) ||
	place_meeting(x+2,y,obj_collision_0)){
		instance_destroy();
	}
}



