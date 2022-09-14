

switch(automa_boss_mid_phase){
	case 0:									//fade appena entrato nella stanza
		fade0 = make_fade_out(1, 180);		
		automa_boss_mid_phase++;
	break;
	case 1:									//attendo la fine del fade
		if(!instance_exists(fade0)){		
			automa_boss_mid_phase++;	
		}
	break;
	case 2:									//creo l'ultimo dialogo del boss
		dialogue0 = create_undertale_text_box(1, false, noone, 0, 0, true, "...perché non sopravvivrai per raccontarlo!", 3, sound_boss_dialogue, 0, fnt_determination_mono, 1, 1);
		automa_boss_mid_phase++;
	break;
	case 3:									//quando è finito il dialogo
		if(dialogue0.dialogue_done==true){
			automa_boss_mid_phase++;
		}
	break;	
	case 4:									//premo spazio per cancellarlo
		if(keyboard_check_pressed(vk_space)){
			instance_destroy(dialogue0);	
			automa_boss_mid_phase++;
		}
	break;
	case 5:									//segno il fatto che l'introduzione è stata completata
		phase_0_completed=true;
		automa_boss_mid_phase++;
	break;
	case 6:
		
	break;
	
	default:
	break;









}











