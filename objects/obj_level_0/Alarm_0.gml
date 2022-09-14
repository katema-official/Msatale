if(room!=rm_level_0) exit;

if(choose(0,1)==0){
	//lati
	var xx = choose(0,room_width);
	var yy = irandom_range(0,room_height);
}else{
	//cima o fondo
	var xx = irandom_range(0,room_width);
	var yy = choose(0,room_height)
}

instance_create_layer(xx,yy,"Instances",obj_ven);

alarm[0] = 240;