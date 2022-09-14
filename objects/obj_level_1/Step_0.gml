
if(room==rm_level_1){
	if(score >= 3000){
		global.level_won = 1;
		room_goto(rm_win_space);
		audio_play_sound(snd_win,1,false);
	}
	if(lives <= 0){
		global.level_lose = 1;
		room_goto(rm_lose_space);
		audio_play_sound(snd_lose,1,false);
	}
	if(score>=1000){
		spawn_speed=2;
	}
	if(score>=2000){
		spawn_speed=4;	
	}
}

if(global.check_bullet==true){
	with(obj_bullet){
		image_blend=$959595;
	}
}

