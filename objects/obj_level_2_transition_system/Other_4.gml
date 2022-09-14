//se la stanza è una del livello 2
rm_temp = room;
var legit_room = false;
for(var i = 0;i < 9; i++){
	if(room_get_name(rm_temp) == ("rm_level_2_"+string(i))){
		legit_room = true;
	}
}

//se non sono in una stanza del livello 2 esco,
//perché questa operazione deve essere eseguita SOLO
//nelle stanza dei carriarmati
if(!legit_room) exit;
rm_temp_current = rm_temp;

//devo distinguere due casi:
//sto entrando in una stanza nuova perché ho vinto
//o sto entrando in una stanza vecchia perché sono morto

//è la prima volta che entro nella stanza
if(rm_temp_current!=rm_temp_saved){
	
	//pulisco le due liste, così da poterle inizializzare
	ds_list_clear(list_all_enemies);
	ds_list_clear(list_dead_enemies);
	
	//inizializzo la prima con tutti i nemici della stanza
	for(var i = 0; i<instance_number(obj_tank_down_enemies_parent); i++){
		ds_list_add(list_all_enemies,instance_find(obj_tank_up_enemies_parent,i));
		ds_list_add(list_all_enemies,instance_find(obj_tank_down_enemies_parent,i));
	}

	//ora che ho inizializzato le liste devo segnare che l'ultima stanza in cui sono stato
	//e quella in cui sono ora sono le stesse
	rm_temp_saved=rm_temp_current;
}

//sto rientrando nella stanza dopo essere morto
if(rm_temp_current==rm_temp_saved){
		
	//distruggo tutti i carri armati morti
	for(var i = 0; i<ds_list_size(list_dead_enemies); i++){
		instance_destroy(ds_list_find_value(list_dead_enemies,i));
	}
	//alarm[0] = 1;
	
}







