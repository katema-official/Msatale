switch(automa_step){
	case -1:				//non devo ancora fare nulla
		exit;
	break;
	case 0:					//creazione asterisco (se c'è)
		id_asterisk=create_undertale_text(font, current_x_for_asterisk, current_y_for_asterisk,
		space_horizontal_next, space_vertical_next, 2,
		wait_time_draw, undefined, "* ", 0);
		automa_step=1;
	break;
	case 1:					//se ho creato l'asterisco, attendo la sua terminazione
		if(id_asterisk.dialogue_done==true){
			automa_step=2;	//quando termina, vado a creare il testo
		}
	break;
	case 2:					//creo il dialogo
		sprite_must_start_animating=true;
		id_dialogue=create_undertale_text(font, current_x_for_dialogue, current_y_for_dialogue,
		space_horizontal_next, space_vertical_next, max_characters_in_line,
		wait_time_draw, sound, text, effect);
		automa_step=3;
	break;
	case 3:					//attendo la terminazione del dialogo
		if(id_dialogue.dialogue_done==true){
			automa_step=4;	
		}
	break;
	case 4:					//lo sprite, se era animato, può smettere di esserlo
		sprite_must_stop_animating=true;
		automa_step=5;
	break;
	case 5:					//per ora non so che fargli fare
		dialogue_done=true;
		automa_step=6;
	break;
	case 6:
		exit;
	break;
	
}










