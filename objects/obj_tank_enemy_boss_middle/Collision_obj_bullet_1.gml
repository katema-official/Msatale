is_hit=true;	//quando vengo colpito, me lo segno.
with(other){	//distruggo il proiettile che mi ha colpito
	instance_destroy();      	
}
alarm[0] = 2;	//uso un allarme per far tornare is_hit a false. Ho fatto delle prove
				//e solo con un allarme >=2 l'effetto bianco viene applicato correttamente
				//all'intero boss
