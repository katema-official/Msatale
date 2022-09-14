//la torretta segue sempre la sua base
x=unique_base.x;
y=unique_base.y;


//la torretta punta sempre in direzione del mouse
image_angle = point_direction(x,y,mouse_x,mouse_y);

//quando voglio sparare, devo assicurarmi di avere colpi in canna
if((mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) && bullet_pot>0){
	inst = instance_create_layer(x + lengthdir_x(15,image_angle),y + lengthdir_y(15,image_angle),"Instances",obj_bullet_1);
	audio_play_sound(sound_shoot, 20, false);
	bullet_pot--;
	inst.direction = image_angle;
	inst.image_angle = image_angle;
	inst.speed = 3;
}

//bullet_act rappresenta il numero di proiettili miei attualmente presenti su schermo
bullet_act = instance_number(obj_bullet_1);
//bullet_tot il numero totale
bullet_tot = bullet_pot + bullet_act;

//automa per la gestione del numero di proiettili in canna
switch(automa_state){
	case 0:						//caso 0: i proiettili totali sono 5.
		i=0;
		if((bullet_tot)==5){	//finché esistono i 5 proiettili (fisicamente o pronti) non faccio nulla
			automa_state=0;
		}
		if((bullet_tot) < 5){	//se ne manca anche solo uno vado nello stato 1
			automa_state=1;
		}
	break;
	
	case 1:						//caso 1: come devo comportarmi quando devo ricaricare
		if(bullet_tot==5){		//se tutti i proiettili sono in canna, torno nello stato 0
			automa_state=0;	
		}
		i++;					//incremento una variabile di ricarica
		if((mouse_check_button_pressed(mb_left))){	//se mentre sto ricaricando sparo un colpo, interrompo
			automa_state=3;		//la ricarica passando allo stato 3
		}
		if(i==60){				//se passa un secondo, vado nello stato 2 per ricaricare
			automa_state=2;
		}
		if(bullet_pot=0 && bullet_tot!=5){	//se sono a secco, voglio che almeno un proiettile venga
			automa_state=4;		//ricaricato, indipendentemente dal fatto che stia premento mouse sx o no
		}
	break;

	case 2:						//caso 2: ricarico una munizione e torno nello stato 1
		bullet_pot++;
		i=0;
		automa_state=1;
	break;

	case 3:						//caso 3: azzero il contatore della ricarica e ritorno nello stato 1
		i=0;
		automa_state=1;
	break;
	
	case 4:						//caso 4: ricarico dopo un secondo no matter what
		j++;
		if(j=60){
			j=0;
			automa_state=5;		//dopo un secondo passo allo stato 5 per ricaricare
		}
	break;
	
	case 5:						//caso 5: ricarico
		bullet_pot++;			//ricarico. Devo dirlo ancora?
		i=0;
		automa_state=1;			//torno nello stato uno per tornare alla normale amministrazione di ricarica
	break;
}



