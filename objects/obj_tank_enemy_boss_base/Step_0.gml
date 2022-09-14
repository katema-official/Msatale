event_inherited();

direction = (direction + 360) % 360;



switch(system.phase){
	case 0:
		image_speed=0;
	break;
	
	case 1:
		switch(state_1){	//automa di movimento. un secondo fermo e due in movimento
			case still:		//se sono fermo
				hspeed=0;
				vspeed=0;
				image_speed=0;
				counter_1++;
				if(counter_1 % 60 == 0){	//dopo un secondo che sono stato fermo
					tmp = choose(up,upright,right,downright,down,downleft,left,upleft);		//scelgo casualmente una direzione in cui muovermi
					if(tmp4!=-1){			//se tmp4, variabile che si aggiorna quando il boss sta per andare a sbattere verso una delle pareti, ha un valore significativo
						tmp=tmp4;			//prendo quella direzione come nuova direzione di movimento
						tmp4=-1;
					}
					counter_1=0;
					tmp2=(135-(tmp*45));	//calcolo l'angolo effettivo verso il quale devo muovermi
					tmp2 = (tmp2+360) % 360;
					tmp3 = angle_difference(image_angle,tmp2);	//faccio la differenza tra l'angolo corrente e quello di destinazione
					state_1 = rotate;							//vado nello stato di rotazione
				}
			break;
			case up:
				vspeed=-0.5;
			break;
			case down:
				vspeed=0.5;
			break;
			case left:
				hspeed=-0.5;
			break;
			case right:
				hspeed=0.5;
			break;
			case upright:
				hspeed=0.5;
				vspeed=-0.5;
			break;
			case downright:
				hspeed=0.5;
				vspeed=0.5;
			break;
			case downleft:
				hspeed=-0.5;
				vspeed=0.5;
			break;
			case upleft:
				hspeed=-0.5;
				vspeed=-0.5;
			break;
			case rotate:			//se devo ruotare
				if(tmp3==0){		//se sono GIA' dove volevo arrivare, perché l'angolo scelto è lo stesso della mia rotazione
					c=0;
					tmp3=0;
					state_1=tmp;	//vado nello stato di quella direzione per muovermi in quella direzione
				}
				c++;				//incremento una variabile
				if(tmp3<=0){		//se l'angolo dettato da image_angle è negativo
					if(c%2 == 0){	//ogni due step
						image_angle=(image_angle+1 + 360) % 360;	//vado a aumentare la mia image_angle		
					}
				}else{				//se invece è positivo
					if(c%2 == 0){	//sempre ogni due step
						image_angle=(image_angle-1 + 360) % 360;	//vado a decremetare la mia image_angle
					}
				}
				if(image_angle==tmp2){		//se sono dove volevo arrivare
					c=0;
					tmp3=0;
					state_1=tmp;			//vado nello stato di movimento
				}
			break;
		}
		
		//questo if è FUORI dall'automa. Succede a prescindere
		if(state_1!=still && state_1!=rotate){	//se sono in movimento lungo una direzione
			counter_1++;		//dopo due secondi di movimento voglio fermarmi
			if(counter_1 % 120 == 0){
				tmp=0;
				tmp2=0;
				counter_1=0;
				state_1=still;	//mi fermo, così l'automa ricomincia
			}
		}
		
		//Questo pure succede a prescindere, ma decide il prossimo movimento qualora il boss stesse per colpire una paarete
		if(state_1!=still && state_1!=rotate){			//se sono in movimento
			switch(state_for_collision_circle){
				case no_collision_circle:				//se il boss non rischia di sbattere contro nessuno
					if(collision_circle(x,y,140,obj_collision_0,false,true)){	//faccio un controllo continuo e costante sulla zona attorno al boss. 
						counter_1=0;											
						state_for_collision_circle=collided;					//se sto per andare a sbattere, cambio stato (step n.1)
					}
				break;
				case collided:							//se ho rilevato che, continuando nella direzione corrente, potrei andare a sbattere
					//counterperevitareproblemiconilcollisioncircle=0;
					if(collision_line(x,y,x,y-141,obj_collision_0,false,true)){				//capisco, con questi quattro if, se sto per andare a sbattere
						tmp4 = 1;															//sopra, sotto, a destra o a sinistra
					}
					if(collision_line(x,y,x+141,y,obj_collision_0,false,true)){
						tmp4 = 3;	
					}
					if(collision_line(x,y,x,y+141,obj_collision_0,false,true)){
						tmp4 = 5;	
					}
					if(collision_line(x,y,x-141,y,obj_collision_0,false,true)){
						tmp4 = 7;	
					}
					tmp4tmp=tmp4;															//mi salvo questa informazione in una variabile dal nome discutibile
					state_for_collision_circle=new_direction_after_collision;				//cambio stato per scegliere una nuova direzione NON casuale (step n.2)
				break;
				case new_direction_after_collision:		//devo scegliere una nuova direzione safe in cui muovermi. Ad esempio, se stavo per andare a sbattere
					switch(tmp4tmp){					//verso l'alto, non posso muovermi a destra, in alto a destra, a sinistra e in alto a sinistra,
						case 1:							//o l'automa rileverebbe nuovamente che il boss sta per andare a sbattere. Quindi scelgo una
							tmp4=choose(4,5,6);			//direzione a caso tra basso, basso a destra e basso a sinistra, che mi assicurano che poi non andrò
						break;							//a sbattere (assumendo, ma questo sarà scontato nella stanza in cui si troverà il boss, che le
						case 3:							//uniche pareti presenti siano quelle del bordo stanza). Discorso analogo per quando vado a sbattere
							tmp4=choose(6,7,8);			//a sinistra, in basso e a destra
						break;
						case 5:
							tmp4=choose(8,1,2);
						break;
						case 7:
							tmp4=choose(2,3,4);
						break;
						
					}
					
					state_for_collision_circle=wait_some_steps;	//vado nello stato successivo e imposto il boss affinché stia fermo (step n.3)
					state_1=still;
				break;
				case wait_some_steps:	//serve ad assicurarsi che il prossimo controllo di impatto avvenga quando avrà senso farlo.
					switch(tmp4tmp){	//capisco dove rischiavo di andare a sbattere, e una volta che mi sono sufficiente allontanato da quel muro
						case 1:			//posso tornare nel primo stato, così di controllare di nuovo se rischio di sbattere o no
							if(collision_line(x,y,x,y-143,obj_collision_0,false,true)==noone){
								state_for_collision_circle=no_collision_circle;
								tmp4tmp=-1;
							}
						break;
						case 3:
							if(collision_line(x,y,x+143,y,obj_collision_0,false,true)==noone){
								state_for_collision_circle=no_collision_circle;
								tmp4tmp=-1;
							}
						break;
						case 5:
							if(collision_line(x,y,x,y+143,obj_collision_0,false,true)==noone){
								state_for_collision_circle=no_collision_circle;
								tmp4tmp=-1;
							}
						break;
						case 7:
							if(collision_line(x,y,x-143,y,obj_collision_0,false,true)==noone){
								state_for_collision_circle=no_collision_circle;
								tmp4tmp=-1;
							}
						break;
					}
				break;
			}
		}
		
		//animazione per quando si muove
		if(state_1!=still && state_1!=rotate){
			image_speed=0.8;	
		}else{
			image_speed=0;
		}
		
	break;
}