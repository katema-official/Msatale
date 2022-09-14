//variabili decise dalla funzione che crea questo oggetto
upper_left_angle_external_box_y=0;		//a che altezza voglio creare il box di dialogo?
w_box_width=0;							//qual è la lunghezza del box esterno bianco?
w_box_height=0;							//e la sua altezza?
b_box_width=0;							//qual è la lunghezza del box interno nero?
b_box_height=0;							//e la sua altezza?
is_sprite_present=false;				//c'è uno sprite?
spr_index=undefined;					//se si quale?
spr_begin=0;							//se è animato, da quale image_index inizia?
spr_end=0;								//e a quale image_index finisce? (se non è animato, metti lo stesso numero di quello sopra)
is_asterisk_present=false;				//c'è l'asterisco?
text="";								//il testo da scrivere
max_characters_in_line=0;				//quanti caratteri in una linea al massimo?
wait_time_draw=0;						//quanti step attendo tra una lettera e l'altra?
sound=undefined;						//che suono per ogni lettera?
effect=0;								//che effetto per le lettere?
font=fnt_fyxedsys;						//che font avrà il dialogo?
sprite_xscale=1;						//la xscale dello sprite?
sprite_yscale=1;						//la yscale dello sprite?

//variabili interne all'oggetto
start_drawing=false;					//diventa true appena sono state settati i valori dalla funzione
current_x_for_dialogue=0;				//la x che indica dove verrà scritto il dialogo
current_y_for_dialogue=0;				//la y che indica dove verrà scritto il dialogo
current_x_for_sprite=0;					//la x che indica dove verrà disegnato l'eventuale sprite
current_y_for_sprite=0;					//la y che indica dove verrà disegnato l'eventuale sprite
current_x_for_asterisk=0;				//la x che indica dove verrà disegnato l'eventuale asterisco
current_y_for_asterisk=0;				//la x che indica dove verrà disegnato l'eventuale asterisco
space_horizontal_next=16;				//OK
space_vertical_next=38;
max_characters_in_line=33;
//automa a stati finiti per il controllo della scrittura dei dialoghi nello step event
automa_step=-1;
//variabili per salvare l'id dell'eventuale asterisco e del dialogo, così da usarli per fare cose belle
id_asterisk=undefined;
id_dialogue=undefined;
//variabili che servono per lo sprite animato.
sprite_must_start_animating=false;		//settato a true quando parte l'animazione
sprite_must_stop_animating=false;		//settato a true quando l'animazione finisce

//variabili per l'animazione dell sprite
spr_number_of_subimages=1;	//quante sottoimmagini ci sono
spr_current_subimage=0;		//la sottoimmagine corrente
step_for_a_subimage=8;		//questo vuol dire per quanti step rimane visibile una sottoimmagine dello sprite
counter_step_animation=0;	//counter che, quando supera step_for_a_subimage, fa sì che cambi lo sprite dell'animazione

//variabile per capire la dimensione dello sprite e agire di conseguenza
winning_dimension=-1;

//variabile per segnare quando il dialogo è stato completato
dialogue_done=false;


alarm[0] = 1;









