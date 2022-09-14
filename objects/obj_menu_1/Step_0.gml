if(room!=rm_menu_1) exit;

if(score!=0){
	score = 0;
}
if(lives!=3){
	lives=3;
}

if(keyboard_check_pressed(vk_space)){
	if(level_0_evidenced){
		if(room==rm_menu_1){
			room_goto(rm_commands);	
		}
	}
	if(level_1_evidenced){
		if(room==rm_menu_1){
			room_goto(rm_commands_1);	
		}
	}
	if(level_2_evidenced){
		if(room==rm_menu_1){
			room_goto(rm_commands_2);	
		}
	}
}

audio_stop_all();