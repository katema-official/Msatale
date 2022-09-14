if(start_draw_event!=true) exit;

if(((step_counter % wait_time_draw) == 0) && (dialogue_done==false) && (space_pressed==false)){	//controllo se c'è bisogno di disegnare un nuovo carattere
	
	if(string_char_at(dialogue_text, current_char)==""){				//controllo se ho finito di disegnare il dialogo
		dialogue_done=true;	
	}else{
	
		if(string_char_at(dialogue_text, current_char)==" "){	//controllo se il carattere corrente è uno spazio
			//se lo è, devo contare la lunghezza della parola successiva per capire se ci sta in questa riga oppure va disegnata alla prossima
			while((string_char_at(dialogue_text, current_char+new_word_length+1) != " ") && (string_char_at(dialogue_text, current_char+new_word_length+1) != "")){	//finché il prossimo carattere della parola è diverso da spazio e da endline
				new_word_length++;		//aggiorno la lunghezza della nuova parola
			}
			if(current_number_of_characters_in_line+new_word_length>max_characters_in_line - 1){	//se scrivere la parola successiva sulla stessa riga comporta uno strabordamento (il -1 è dovuto all'esperienza)
				x_current=x_start;								//x della nuova riga
				y_current+=space_vertical_next;					//aggiorno la y andando alla riga successiva
				current_char++;						//serve perché prima di questo incremento il char corrente era lo spazio. Se vado a capo lo spazio non mi interessa.
				offset_current_char++;					//incremento l'offset della matrice, altrimenti mi rimane vuota una riga
				current_number_of_characters_in_line=0;	//se ho cambiato linea il numero di caratteri attualmente presenti su quella linea è 0. Scrivo infatti -1 perché dopo, in ogni caso, questa variabile viene incrementata di 1
			}
			new_word_length=0;				//per tutte le nuove parole che seguiranno
		}
		//prima qui avevo messo un draw_text per disegnare il testo. Ma dato che, se avessi messo qui quella linea di codice, il testo sarebbe apparso
		//solo per uno step, ho deciso di salvare le sue informazione rilevanti (x, y, char) in una matrice che stamperà i caratteri in modo "naturale",
		//dato che stamperà solo i caratteri precedenti a current_char.
		if(sound!=undefined && irandom_range(0,3)!=0){		//voglio riprodurre il suono solo a volte
			audio_play_sound(sound, 10, false);
		}
		x_current+=space_horizontal_next;		//mi sposto in avanti lungo l'asse delle x per disegnare il prossimo carattere
		current_number_of_characters_in_line++;		//aumento di uno il numero di caratteri disegnati su questa linea
		dialogue_text_array[current_char - offset_current_char, 1]=x_current;		//nella matrice salvo le coordinate del carattere e del carattere stesso
		dialogue_text_array[current_char - offset_current_char, 2]=y_current;
		dialogue_text_array[current_char - offset_current_char, 3]=string_char_at(dialogue_text, current_char);
		current_char++;		//aggiorno il carattere da leggere
		
		
	}
}

if(space_pressed==true){		//se ho premuto spazio, voglio far apparire subito il testo a schermo
	
	while(dialogue_done==false){	//per farlo, ripeto il codice sopra in un ciclo while.
		
		
		if(string_char_at(dialogue_text, current_char)==""){				//controllo se ho finito di disegnare il dialogo
			if(sound!=undefined){		//voglio riprodurre il suono alla fine, UNA VOLTA SOLA
				audio_play_sound(sound, 10, false);
			}
			dialogue_done=true;	
		}else{
	
			if(string_char_at(dialogue_text, current_char)==" "){	//controllo se il carattere corrente è uno spazio
				//se lo è, devo contare la lunghezza della parola successiva per capire se ci sta in questa riga oppure va disegnata alla prossima
				while((string_char_at(dialogue_text, current_char+new_word_length+1) != " ") && (string_char_at(dialogue_text, current_char+new_word_length+1) != "")){	//finché il prossimo carattere della parola è diverso da spazio e da endline
					new_word_length++;		//aggiorno la lunghezza della nuova parola
				}
				if(current_number_of_characters_in_line+new_word_length>max_characters_in_line - 1){	//se scrivere la parola successiva sulla stessa riga comporta uno strabordamento (il -1 è dovuto all'esperienza)
					x_current=x_start;								//x della nuova riga
					y_current+=space_vertical_next;					//aggiorno la y andando alla riga successiva
					current_char++;						//serve perché prima di questo incremento il char corrente era lo spazio. Se vado a capo lo spazio non mi interessa.
					offset_current_char++;					//incremento l'offset della matrice, altrimenti mi rimane vuota una riga
					current_number_of_characters_in_line=0;	//se ho cambiato linea il numero di caratteri attualmente presenti su quella linea è 0. Scrivo infatti -1 perché dopo, in ogni caso, questa variabile viene incrementata di 1
				}
				new_word_length=0;				//per tutte le nuove parole che seguiranno
			}
			//prima qui avevo messo un draw_text per disegnare il testo. Ma dato che, se avessi messo qui quella linea di codice, il testo sarebbe apparso
			//solo per uno step, ho deciso di salvare le sue informazione rilevanti (x, y, char) in una matrice che stamperà i caratteri in modo "naturale",
			//dato che stamperà solo i caratteri precedenti a current_char.
			
			x_current+=space_horizontal_next;		//mi sposto in avanti lungo l'asse delle x per disegnare il prossimo carattere
			current_number_of_characters_in_line++;		//aumento di uno il numero di caratteri disegnati su questa linea
			dialogue_text_array[current_char - offset_current_char, 1]=x_current;		//nella matrice salvo le coordinate del carattere e del carattere stesso
			dialogue_text_array[current_char - offset_current_char, 2]=y_current;
			dialogue_text_array[current_char - offset_current_char, 3]=string_char_at(dialogue_text, current_char);
			current_char++;		//aggiorno il carattere da leggere
		
		
		}
	
	}
}


step_counter++;		//aggiorno lo step counter, indipendentemente da quello che è successo prima.

switch(effect){
	
	case 0:
		for(var i=1; i<current_char - offset_current_char; i++){
			draw_text(dialogue_text_array[i, 1], dialogue_text_array[i, 2], dialogue_text_array[i, 3]);
		}
	break;
	
	case 1:
		for(var i=1; i<current_char - offset_current_char; i++){
			draw_text(dialogue_text_array[i, 1]+irandom_range(-1,1), dialogue_text_array[i, 2]+irandom_range(-1,1), dialogue_text_array[i, 3]);
		}
	break;
	
	case 2:
		for(var i=1; i<current_char - offset_current_char; i++){
			draw_text(dialogue_text_array[i, 1]+lengthdir_x(3, dir_effect_2-i*dir_constant), dialogue_text_array[i, 2]+lengthdir_y(3, dir_effect_2-i*dir_constant), dialogue_text_array[i, 3]);
			
		}
	break;
	
}



