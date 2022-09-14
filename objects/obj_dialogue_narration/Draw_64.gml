draw_set_font(fnt_8bitoperatorJVE);
draw_set_color(c_white);

/*
if(sprite_above!=-1){
	curr = instance_create_layer(sprite_above_x,sprite_above_y,"Instances",obj_target_dialogue_narration);
	curr.sprite_index=sprite_above;
	curr.image_alpha=sprite_above_alpha;
	//draw_sprite_ext(sprite_above,image_above_index,sprite_above_x,sprite_above_y,1,1,0,c_white,sprite_above_alpha);	
}
*/

message_end = array_length_1d(message);

if(message_end>0){
	
	var charWidth = 15; //spazio occupato da un singolo carattere
	var lineEnd = 31; //quanti caratteri voglio al massimo in una riga
	var line = 0; //linea corrente
	var space = 0; //index del char corrente (hello => h=0, e=1, l=2, l=3, o=4) PER LINEA
	var i = 1; //counter del carattere corrente 
	
	
	if(cutoff < string_length(message[message_current])){
		if(timer >= delay){
			cutoff++;
			timer = 0;
			if(audio_enabled==true){
				audio_play_sound(audio_dialogue_0,1,false);
			}
		}else{
			timer++;	
		}
		
	}
	
	//premo spazio per andare al dialogo successivo
	if(go_to_next_message==true){
		//controllo che ci siano altri dialoghi da mostrare, e nel caso vado al prossimo
		if(message_current < message_end -1){
			message_current++; //il messaggio corrente viene aggiornato
			cutoff = 0;
		}else{		
			done = true; //abbiamo finito i dialoghi, dobbiamo distruggere l'oggetto
		}
		go_to_next_message=false;
	}
	
	if(done==true){
		instance_destroy();
	}
	
	while(i <= string_length(message[message_current]) && i <= cutoff){
		if(string_char_at(message[message_current], i) == "£"){
			modifier = real(string_char_at(message[message_current], ++i));
			++i;
		}
		//vai alla linea successiva
		var length = 0;
		while(string_char_at(message[message_current], i) != " " && i<=string_length(message[message_current])){
			i++;
			length++;
		}
		if(space+length > lineEnd){
			space = 0;
			line++;
		}
		i -= length;
		
		switch(modifier){
			case 0:
				draw_set_color(c_white);
				draw_text(text_x+(space*charWidth), text_y+(37*line), string_char_at(message[message_current], i));
				break;
			case 1:
				draw_set_color(c_white);
				draw_text(text_x+(space*charWidth)+random_range(-1,1), text_y+(37*line)+random_range(-1,1), string_char_at(message[message_current], i));
				break;
		}
		space++;
		i++;
	}
	
}









/*
if(message_end > 0){
	
	var charWidth = 7;
	var lineEnd = 35;
	var line = 0;
	var space = 0;
	var i = 1;
	var delay = 3;
	
	
	
	if(cutoff < string_length(message[message_current])){
		if(timer >= delay){
			cutoff++;
			timer = 0;
		}
		else timer++;
	}
	
	
	
	if(portrait=="none"){
		var tx = 5;
	}else{
		var tx = 74;
	}
	var ty = 5;
	
	if(keyboard_check_pressed(ord("S"))){
		if(message_current < message_end - 1){
			message_current++;
			cutoff = 0;
		}else{
			done = true;
		}
	}
	
	
	
	while(i <= string_length(message[message_current]) && i <= cutoff){
		
		if(string_char_at(message[message_current], i) == "&"){
			modifier = real(string_char_at(message[message_current], ++i));
			++i;
		}
		
		var length = 0;
		while(string_char_at(message[message_current], i) != " " && i<= string_length(message[message_current])){
			i++;
			length++;
		}
		if(space+length > lineEnd){
			space = 0;
			line++;
		}
		i -= length;
		
		
		
		switch(modifier){
			case 0:
				draw_set_color(c_white);
				draw_text(tx+(space*charWidth), ty+(13*line), string_char_at(message[message_current], i));
				break;
			case 1:
				draw_set_color(c_white);
				draw_text(tx+(space*charWidth)+random_range(-1,1), ty+(13*line)+random_range(-1,1), string_char_at(message[message_current], i));
				
				
		}
		
		space++;
		i++;
	}
	
	switch(portrait){
		case "noone": break;
		case "diest":
			draw_sprite(spr_pingas,0,38,38);
			break;
	}
}
*/