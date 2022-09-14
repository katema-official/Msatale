//start_drawing lo mettiamo in fondo

draw_set_font(font);

current_x_for_dialogue=room_width/2 - b_box_width/2 + 2;
current_y_for_dialogue=upper_left_angle_external_box_y + w_box_height/2 - b_box_height/2 + 16;



//domanda: c'è lo sprite? Perché se c'è bisogna metterlo.
if(is_sprite_present==true){			//se c'è lo sprite
	//calcolo la x e la y dove deve essere rappresentato. Nota bene che si assume SEMPRE che la x e la y
	//dello sprite siano centrate!
	
	//per la x devo fare un discorso a parte.
	//se lo sprite è stretto, lo voglio centrato nella parte sinistra del box di dialogo, come se ci fosse
	//un quadrato
	//se invece la larghezza dello sprite è maggiore dell'altezza del box nero, lo voglio il più a sinistra
	//possibile (naturalmente), ma che non tocchi la parete sinistra. Quindi devo innanzitutto capire quale
	//tra questi due valori è il maggiore
	winning_dimension=max(b_box_height, sprite_get_width(spr_index)*sprite_xscale);
	//se vince il box nero, creo un quadrato fittizio a sinistra
	if(winning_dimension==b_box_height){
		current_x_for_sprite=room_width/2 - b_box_width/2 + b_box_height/2;	
	//se invece vince la larghezza dello sprite, cerco di arrangiarmi (meglio fare poché volte uno sprite largo
	}else{
		current_x_for_sprite=room_width/2 - b_box_width/2 + (sprite_get_width(spr_index)/2)*sprite_xscale + 10;
	}
	
	current_y_for_sprite=upper_left_angle_external_box_y + w_box_height/2;				//calcolo la y
	current_x_for_dialogue=current_x_for_sprite + winning_dimension/2 - space_horizontal_next - 2;		//dove partirà il dialogo. Gli ultimi due valori sottratti sono stati scelti in base all'esperienza.
	var char_to_remove=0;																//caratteri da rimuovere da quelli che stanno in una riga sola (colpa dello sprite)
	char_to_remove=ceil(winning_dimension/space_horizontal_next);						//li calcolo in base alla grandezza dello sprite
	max_characters_in_line=max_characters_in_line - char_to_remove + 2;					//il +2 è dovuto ad esperienze, non a un motivo matematico								//aggiorno il numero di caratteri massimi per una riga
	
	//mi salvo quante subimmagini ci sono nell'animazione (anche 0!)
	spr_number_of_subimages=spr_end-spr_begin+1;
}

//domanda: c'è l'asterisco? perché se c'è devo aggiornare le sue coordinate così come quelle del dialogo
if(is_asterisk_present==true){
	if(is_sprite_present==true){
		//devo capire dove si trova lo sprite sull'asse delle x
		if(winning_dimension==b_box_height){
			current_x_for_asterisk=room_width/2 - b_box_width/2 + b_box_height - space_horizontal_next - 2;
		}else{
			current_x_for_asterisk=room_width/2 - b_box_width/2 + sprite_get_width(spr_index)*sprite_xscale;
		}
		current_y_for_asterisk=current_y_for_dialogue;												//coordinata base y
		max_characters_in_line=max_characters_in_line - 2;																	//tolgo due caratteri che sono destinati a "* "
		current_x_for_dialogue=current_x_for_asterisk + space_horizontal_next*2;											//nuova coordinata x per il dialogo (successiva all'asterisco con lo spazio)
	}else{
		current_x_for_asterisk=room_width/2 - b_box_width/2 + 6;									//coordinata base x
		current_y_for_asterisk=current_y_for_dialogue;												//coordinata base y
		current_x_for_dialogue+=space_horizontal_next*2 + 2;										//nuova coordinata x per il dialogo (successiva all'asterisco con lo spazio)
		max_characters_in_line=max_characters_in_line - 2;											//tolgo due caratteri che sono destinati a "* "
	}
}



//ora ho impostato le coordinate di tutto. Del dialogo, dello sprite e dell'asterisco. Quando start_drawing
//diverrà true il rettangolo e lo sprite verranno disegati, e lo sprite sarà eventualmente disegnato.
//prima però devo creare l'asterisco (nel caso) e, solo dopo che è stato disegnato, pensare al dialogo.
//lo faccio settando automa_step col valore giusto

if(is_asterisk_present==true){
	automa_step=0;	
}else{
	automa_step=2;	
}

start_drawing=true;






