
if(room==rm_level_0){
	if(score >= 500){
		global.level_won = 0;
		room_goto(rm_win_space);
		audio_play_sound(snd_win,1,false);
	}
	if(lives <= 0){
		global.level_lose = 0;
		room_goto(rm_lose_space);
		audio_play_sound(snd_lose,1,false);
	}
}

if(global.check_bullet==true){
	with(obj_bullet){
		image_blend=$959595;
	}
}

