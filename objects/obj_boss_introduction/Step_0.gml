


switch(automa_boss_introduction_dialogue){
	case 0:
		d0 = create_undertale_text_box(1, false, noone, 0, 0, true, "Immagino tu ti senta molto soddisfatto.", 3, sound_boss_dialogue, 0, fnt_determination_mono, 1, 1);
		automa_boss_introduction_dialogue+=0.5;
	break;
	case 0.5:
		if(d0.dialogue_done==true){
			if(keyboard_check_pressed(vk_space)){
				automa_boss_introduction_dialogue+=0.5;
			}
		}
	break;
	
	case 1:
		d1 = create_undertale_text_box(1, false, noone, 0, 0, true, "\"Era tutto qui? Capirai che difficoltà\" starai pensando.", 3, sound_boss_dialogue, 0, fnt_determination_mono, 1, 1);
		automa_boss_introduction_dialogue+=0.5;
	break;
	case 1.5:
		instance_destroy(d0);
		if(d1.dialogue_done==true){
			if(keyboard_check_pressed(vk_space)){
				automa_boss_introduction_dialogue+=0.5;
			}
		}
	break;
	
	case 2:
		d0 = create_undertale_text_box(1, false, noone, 0, 0, true, "Beh, lo ammetto, nemmeno io ho mai pensato che fossero questo chissà che.", 3, sound_boss_dialogue, 0, fnt_determination_mono, 1, 1);
		automa_boss_introduction_dialogue+=0.5;
	break;
	case 2.5:
		instance_destroy(d1);
		if(d0.dialogue_done==true){
			if(keyboard_check_pressed(vk_space)){
				automa_boss_introduction_dialogue+=0.5;
			}
		}
	break;
	
	case 3:
		d1 = create_undertale_text_box(1, false, noone, 0, 0, true, "Ma sarai felice di sapere che sei il primo ad essere giunto così lontano. Congratulazioni!", 3, sound_boss_dialogue, 0, fnt_determination_mono, 1, 1);
		automa_boss_introduction_dialogue+=0.5;
	break;
	case 3.5:
		instance_destroy(d0);
		if(d1.dialogue_done==true){
			if(keyboard_check_pressed(vk_space)){
				automa_boss_introduction_dialogue+=0.5;
			}
		}
	break;
	
	case 4:
		d0 = create_undertale_text_box(1, false, noone, 0, 0, true, "Tuttavia mi spiace, ma non potrai vantarti di ciò con nessuno...", 3, sound_boss_dialogue, 0, fnt_determination_mono, 1, 1);
		automa_boss_introduction_dialogue+=0.5;
	break;
	case 4.5:
		instance_destroy(d1);
		if(d0.dialogue_done==true){
			automa_boss_introduction_dialogue+=0.5;
		}
	break;
	
	
	//perché non sopravviverai per raccontarlo!
	
	
	
	case 5:
		if(keyboard_check_pressed(vk_space)){
			instance_destroy(d0);
			room_goto(rm_level_2_boss);	
		}
	break;
	
	
	
	
	
	
}










