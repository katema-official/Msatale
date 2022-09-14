if(keyboard_check(vk_left)){
	image_angle += 5;
}

if(keyboard_check(vk_right)){
	image_angle -= 5;
}

if(keyboard_check(vk_up)){
	motion_add(image_angle - 90,0.03);	
}

if(keyboard_check(vk_down)){
	motion_add(image_angle + 90,0.03);	
}

move_wrap(true, true, sprite_height/2);



/*Voglio che il programma intuisca/capisca che modalità voglio usare. Se space_command==1, ne sparo
uno alla volta. Se invece space_command==2, ne sparo uno ogni quarto di secondo mentre tengo premuto*/

if(!keyboard_check_direct(vk_space)){				//Se non sto tenendo premuto, i flag che attivano
	flag_1 = false;									//la seconda modalità restano falsi
	flag_2 = false;
	three_steps_passed = false;
}

if(keyboard_check(vk_space) && space_command==1){	//se sto tenendo premuto e sono nella prima modalità
													//potrei voler passare alla seconda.
		if(!the_countdown_started){					//se the_countdown_started è false, lo inizio
			the_countdown_started=true				//e rendo la variabile true per evitare di ri-iniziarlo
													//mentre è già attivo.
			alarm[4] = 5;							//dopo 15 step, se (controlla gli alarm) per tutto
			alarm[5] = 10;							//il tempo ho tenuto spazio premuto, allora vuol dire
			alarm[6] = 15;							//che voglio passare alla modalità due
		}										
}else{												//a un certo punto potrei smettere di premere il pulsante
	the_countdown_started=false;					//e allora torno alla situazione iniziale con questa riga
}													//e le tre che settano le flag a 0

if(three_steps_passed){								//se per quindici step ho tenuto premuto il pulsante
	if(flag_1 && flag_2){							//allora passo alla modalità due e rimetto a false
		space_command=2;							//il countdown, così posso farlo ripartire senza problemi
		the_countdown_started=false;				//qualora dovessi tornare alla modalità uno.
	}
}else{												//se però a un certo punto ho lasciato il pulsante
	space_command=1;								//le solite tre righe sopra settano le flag come false,
}													//e qui io torno alla modalità uno.



if(space_command==2){
	//sto tenendo premuto
	if(keyboard_check(vk_space) && next_shoot){
		var inst = instance_create_layer(x,y, "Instances", obj_bullet);
		inst.direction = image_angle - 90;
		audio_play_sound(snd_zap,1,false);
		if(sprite_index==spr_nira_oni){
			var inst2 = instance_create_layer(x,y, "Instances", obj_bullet);
			var inst3 = instance_create_layer(x,y, "Instances", obj_bullet);
			inst2.direction = image_angle - 80;
			inst3.direction = image_angle - 100;
		}
		next_shoot = false;
		alarm[3] = 15;
	}
}

if(space_command==1){
	//sto premendo io	
	if(keyboard_check_pressed(vk_space)){
		var inst = instance_create_layer(x,y, "Instances", obj_bullet);
		inst.direction = image_angle - 90;
		audio_play_sound(snd_zap,1,false);
		if(sprite_index==spr_nira_oni){
			var inst2 = instance_create_layer(x,y, "Instances", obj_bullet);
			var inst3 = instance_create_layer(x,y, "Instances", obj_bullet);
			inst2.direction = image_angle - 80;
			inst3.direction = image_angle - 100;
		}
	}
}



