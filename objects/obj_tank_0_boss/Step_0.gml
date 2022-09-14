if(position_meeting(x+17,y,obj_tank_down_enemies_parent)){
	x-=1;	
}
if(position_meeting(x-17,y,obj_tank_down_enemies_parent)){
	x+=1;	
}
if(position_meeting(x,y-17,obj_tank_down_enemies_parent)){
	y+=1;	
}
if(position_meeting(x,y+17,obj_tank_down_enemies_parent)){
	y-=1;	
}



if(!keyboard_check_direct(vk_anykey)){
	vspeed=0;
	hspeed=0;
	image_speed=0;
	
}

if(!keyboard_check_direct(ord("A")) && !keyboard_check_direct(ord("W")) &&
	!keyboard_check_direct(ord("S")) && !keyboard_check_direct(ord("D"))){
		if(audio_is_playing(audio_tank_movement)){
			audio_stop_sound(audio_tank_movement);	
		}
	}

switch(system.phase){
	
	case 0:
	
	break;
	
	
	case 1:

	if(keyboard_check_direct(ord("W")) && !keyboard_check_direct(ord("D")) && !keyboard_check_direct(ord("A"))){
		vspeed = -1;
		image_angle = sprite_up;	
		image_speed=1;
		if(!audio_is_playing(audio_tank_movement)){
			audio_play_sound(audio_tank_movement, 15, true);	
		}
	}

	if(keyboard_check_direct(ord("W")) && keyboard_check_direct(ord("D"))){
		hspeed=1;
		vspeed=-1;
		image_angle = sprite_up_right;
		image_speed=1;
		if(!audio_is_playing(audio_tank_movement)){
			audio_play_sound(audio_tank_movement, 15, true);	
		}
	}

	if(keyboard_check_direct(ord("W")) && keyboard_check_direct(ord("A"))){
		hspeed=-1;
		vspeed=-1;
		image_angle = sprite_up_left;
		image_speed=1;
		if(!audio_is_playing(audio_tank_movement)){
			audio_play_sound(audio_tank_movement, 15, true);	
		}
	}

	if(keyboard_check_direct(ord("S")) && !keyboard_check_direct(ord("D")) && !keyboard_check_direct(ord("A"))){
		vspeed = 1;
		image_angle = sprite_down;
		image_speed=1;
		if(!audio_is_playing(audio_tank_movement)){
			audio_play_sound(audio_tank_movement, 15, true);	
		}
	}

	if(keyboard_check_direct(ord("S")) && keyboard_check_direct(ord("D"))){
		hspeed=1;
		vspeed=1;
		image_angle = sprite_down_right;
		image_speed=1;
		if(!audio_is_playing(audio_tank_movement)){
			audio_play_sound(audio_tank_movement, 15, true);	
		}
	}

	if(keyboard_check_direct(ord("S")) && keyboard_check_direct(ord("A"))){
		hspeed=-1;
		vspeed=1;
		image_angle = sprite_down_left;
		image_speed=1;
		if(!audio_is_playing(audio_tank_movement)){
			audio_play_sound(audio_tank_movement, 15, true);	
		}
	}


	if(keyboard_check_direct(ord("D")) && !keyboard_check_direct(ord("W")) && !keyboard_check_direct(ord("S"))){
		hspeed = 1;
		image_angle = sprite_right;
		image_speed=-1;
		if(!audio_is_playing(audio_tank_movement)){
			audio_play_sound(audio_tank_movement, 15, true);	
		}
	}
	if(keyboard_check_direct(ord("A")) && !keyboard_check_direct(ord("W")) && !keyboard_check_direct(ord("S"))){
		hspeed = -1;
		image_angle = sprite_left;
		image_speed=-1;
		if(!audio_is_playing(audio_tank_movement)){
			audio_play_sound(audio_tank_movement, 15, true);	
		}
	}
	
	break;

}

if(position_meeting(x+16,y,obj_collision_0)){
	x=x-1;
}
if(position_meeting(x-16,y,obj_collision_0)){
	x=x+1;
}
if(position_meeting(x,y+16,obj_collision_0)){
	y=y-1;
}
if(position_meeting(x,y-16,obj_collision_0)){
	y=y+1;
}
if(position_meeting(x+8,y+8,obj_collision_0)){
	x=x-1;
	y=y-1;
}
if(position_meeting(x+8,y-8,obj_collision_0)){
	x=x-1;
	y=y+1;
}
if(position_meeting(x-8,y+8,obj_collision_0)){
	x=x+1;
	y=y-1;
}
if(position_meeting(x-8,y-8,obj_collision_0)){
	x=x+1;
	y=y+1;
}