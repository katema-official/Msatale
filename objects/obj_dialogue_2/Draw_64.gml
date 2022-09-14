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
	
	var numero_di_caratteri_per_linea = 42;
	
	// dove sono le coordinate (top left) del testo? dipende da due fattori:
	// 1) la presenza o meno di uno sprite (variabile portrait)
	// 2) la presenza o meno di un asterisco (ce ne occuperemo dopo)
	if(portrait==-1){
		text_x = box_interno_x1 + 20;
		text_y = box_interno_y1 + 15;
	}else{
		numero_di_caratteri_per_linea = 30; //quasi sicuro va modificato
		draw_sprite_ext(portrait,portrait_image_index,spr_center_coordinate_x,spr_center_coordinate_y,portrait_xscale,portrait_yscale,0,c_white,1);
		text_x = spr_box_x2 + 20;
		text_y = spr_box_y1 + 15;
	}
	
	//premo spazio per andare al dialogo successivo
	if(keyboard_check_pressed(vk_space)){
		//controllo che ci siano altri dialoghi da mostrare, e nel caso vado al prossimo
		if(message_current < message_end -1){
			message_current++; //il messaggio corrente viene aggiornato
		}else{		
			done = true; //abbiamo finito i dialoghi, dobbiamo distruggere l'oggetto
		}
	}
	
	
	var linea_corrente = 0;
	var spazio_verticale_fra_le_righe = 36;
	var carattere_corrente = 0;
	var delay = 300;
	var char_width = 15;
	
	var i = 1; //numero del carattere della LINEA corrente
	var lunghezza_parola_corrente = 0;
	
	while(carattere_corrente < string_length(message[message_current])){
		if(timer>=delay){	//se sono passati 3 step resetto il timer e vado al carattere successivo
			timer = 0;
			carattere_corrente++;
		}else{	//altrimenti incremento il timer
			timer++;
		}
		draw_text(text_x+(carattere_corrente*char_width),text_y+(linea_corrente*spazio_verticale_fra_le_righe),string_char_at(message[message_current], carattere_corrente + 1));
	}
	/*
	//"funzione" per capire a che punto della riga sono e decidere se scrivere o andare a capo
	while(string_char_at(message[message_current], i+lunghezza_parola_corrente) != " "){
		//i++;	//numero del carattere corrente nella linea corrente
		lunghezza_parola_corrente++; //lunghezza della parola corrente nella linea corrente
		
	}
	if(i+lunghezza_parola_corrente >= numero_di_caratteri_per_linea){
		i += lunghezza_parola_corrente+1;
		lunghezza_parola_corrente=0;
	}else{
		linea_corrente++;
		lunghezza_parola_corrente=0;
		i=1;
	}
	
	*/
	//devo in ogni caso mostrare a schermo il messaggio corrente
	//draw_text(text_x+(carattere_corrente*char_width),text_y+(linea_corrente*spazio_verticale_fra_le_righe),string_char_at(message[message_current], carattere_corrente + 1));
	
	
	
	
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