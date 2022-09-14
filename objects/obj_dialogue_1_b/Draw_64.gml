

draw_set_color(c_white);
draw_rectangle(box_esterno_x1,box_esterno_y1,box_esterno_x2,box_esterno_y2,false);
draw_set_color(c_black);
draw_rectangle(box_interno_x1,box_interno_y1,box_interno_x2,box_interno_y2,false);
draw_set_color(c_black);
draw_rectangle(spr_box_x1,spr_box_y1,spr_box_x2,spr_box_y2,false);



draw_set_font(fnt_8bitoperatorJVE);
draw_set_color(c_white);

message_end = array_length_1d(message);

if(message_end>0){
	
	var charWidth = 15; //spazio occupato da un singolo carattere
	var lineEnd = 35; //quanti caratteri voglio al massimo in una riga
	var line = 0; //linea corrente
	var space = 0; //index del char corrente (hello => h=0, e=1, l=2, l=3, o=4) PER LINEA
	var i = 1; //counter del carattere corrente 
	
	// dove sono le coordinate (top left) del testo? dipende da due fattori:
	// 1) la presenza o meno di uno sprite (variabile portrait)
	// 2) la presenza o meno di un asterisco (ce ne occuperemo dopo)
	if(portrait==-1){
		text_x = box_interno_x1 + 20;
		text_y = box_interno_y1 + 15;
	}else{
		lineEnd = 27;
		draw_sprite_ext(portrait,portrait_image_index,spr_center_coordinate_x,spr_center_coordinate_y,portrait_xscale,portrait_yscale,0,c_white,1);
		text_x = spr_box_x2 + 10;
		text_y = spr_box_y1 + 15;
	}
	if(asterisco==true){
		draw_text(text_x,text_y, "*");
		draw_text(text_x + charWidth, text_y, " ");
		text_x += 2*charWidth;
		lineEnd -= 2;
	}
	
	if(cutoff < string_length(message[message_current])){
		if(timer >= delay){
			cutoff++;
			timer = 0;
			
			//riproduco il suono ad ogni carattere diverso da spazio
			if(reproduce_sound==true){
				if(audio_enabled==true){
					audio_play_sound(choose(audio_dialogue_0,audio_dialogue_1,audio_dialogue_2),1,false);
					reproduce_sound=false;
				}	
			}
			
			//if(audio_enabled==true){
			//	audio_play_sound(choose(audio_dialogue_0,audio_dialogue_1,audio_dialogue_2),1,false);
			//}
		}else{
			timer++;	
		}
		
	}
	
	//premo spazio per andare al dialogo successivo
	if(keyboard_check_pressed(vk_space)){
		//controllo che ci siano altri dialoghi da mostrare, e nel caso vado al prossimo
		if(message_current < message_end -1){
			message_current++; //il messaggio corrente viene aggiornato
			cutoff = 0;
		}else{		
			done = true; //abbiamo finito i dialoghi, dobbiamo distruggere l'oggetto
		}
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
		var length = 0;	//misura la lunghezza della parola che stiamo per scrivere (questo while sotto)
		while(string_char_at(message[message_current], i) != " " && i<=string_length(message[message_current])){
			i++;	//stiamo incrementando anche i per poter contare i caratteri della parola
			length++;
		}
		if(space+length > lineEnd){	//se dove sono ora + dim (resto) parola da scrivere > lunghezza linea =>
			space = 0;		
			line++;		//vai a capo
		}
		i -= length;	//rimettiamo a posto i, sennò salteremmo la parola, e quindi tutto
		
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



//mio
if(string_char_at(message[message_current],i)!=" " && i <= string_length(message[message_current])){
	reproduce_sound=true;
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