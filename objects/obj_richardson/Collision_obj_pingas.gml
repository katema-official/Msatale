if(invincibility==false){
	if(sprite_index==spr_richardson){
		instance_destroy();
		lives -= 1;

		audio_play_sound(snd_die,1,false);

		with(obj_level_1){
			alarm[1] = room_speed;
		}
	}
	if(sprite_index==spr_nira_oni){
		sprite_index=spr_richardson;
		global.check_bullet=false;
		with(other){
			instance_destroy();	
		}
	}
}
