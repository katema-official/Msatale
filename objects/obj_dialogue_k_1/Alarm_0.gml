//variabili di appoggio per la creazione del testo
//nota bene: le x e le y fanno riferimento all'angolo in alto a sinistra di ogni lettera!

x_current=x_start;						//dove disegnare la prossima lettera (x)
y_current=y_start;						//dove disegnare la prossima lettera (y)
current_number_of_characters_in_line=0;	//per tenere conto di quanti caratteri sono stati disegnati sulla linea corrente
new_word_length=0;						//per contare i caratteri della parola successiva


dialogue_text_array[0, 0]=undefined;	//la matrice che conterrà i dati necessari a far apparire i caratteri giusti a schermo
offset_current_char=0;					//offset necessario per la gestione degli spazi che vengono saltati quando si va a capo

dir_effect_2=0;							//direzione dell'effetto 2
dir_constant=30;							//vai in draw all'effetto 2 per capire cosa significa


start_draw_event=true;