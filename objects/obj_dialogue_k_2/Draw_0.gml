if(start_drawing==false) exit;

//show_debug_message(text);

//disegno il rettangolo bianco
draw_set_color(c_white);
draw_rectangle(room_width/2 - w_box_width/2,
				upper_left_angle_external_box_y,
				room_width/2 + w_box_width/2,
				upper_left_angle_external_box_y + w_box_height,
				false);

//disegno il rettangolo nero
draw_set_color(c_black);
draw_rectangle(room_width/2 - b_box_width/2,
				upper_left_angle_external_box_y + w_box_height/2 - b_box_height/2,
				room_width/2 + b_box_width/2,
				upper_left_angle_external_box_y + w_box_height/2 + b_box_height/2,
				false);
draw_set_color(c_white);

//se c'è lo sprite, devo disegnarlo. E inoltre, se prevede un'animazione, devo animarlo finché il personaggio parla.
//Ovvero, da quando il DIALOGO, non l'eventuale asterisco, viene creato, fino a che questo non termina.
if(is_sprite_present==true){
	if(spr_number_of_subimages==1){		//se il numero di sottoimmagini è 1, non c'è animazione
		
		draw_sprite_ext(spr_index, spr_begin, current_x_for_sprite, current_y_for_sprite, sprite_xscale, sprite_yscale, 0, c_white, 1);
	}else{								//se invece l'animazione c'è...
		//...devo stare attento. L'animazione inizia a un certo punto e poi finisce.
		if(sprite_must_start_animating==true && sprite_must_stop_animating==false){		//se l'animazione è iniziata e non è ancora finita
			
			draw_sprite_ext(spr_index, spr_current_subimage + spr_begin, current_x_for_sprite, current_y_for_sprite, sprite_xscale, sprite_yscale, 0, c_white, 1);
			counter_step_animation++;
			if(counter_step_animation>=step_for_a_subimage){		//se è il momento di cambiare sottoimmagine
				spr_current_subimage = spr_current_subimage + 1 % spr_number_of_subimages;
				counter_step_animation=0;
			}
			
		}else{	//se ho finito di animare
			draw_sprite_ext(spr_index, spr_begin, current_x_for_sprite, current_y_for_sprite, sprite_xscale, sprite_yscale, 0, c_white, 1)	
		}
		
	}	

}





