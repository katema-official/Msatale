if(room!=rm_level_1) exit;

var dir;
if(choose(0,1)==0){
	//lati
	var xx = choose(0,room_width);
	var yy = irandom_range(0,room_height);  //spawn point
	if(xx==0){
		xx -= 34;
		if(yy>room_height/2){
			dir = irandom_range(280,350);
		}else{
			dir = irandom_range(10,80);
		}
	}else{
		xx += 34;
		if(yy>room_height/2){
			dir = irandom_range(190,260);
		}else{
			dir = irandom_range(100,170);
		}
	}
}else{
	//cima o fondo
	var xx = irandom_range(0,room_width); 
	var yy = choose(0,room_height);  //spawn point
	if(yy==0){
		yy -= 34;
		if(xx>room_width/2){
			dir = irandom_range(100,170);
		}else{
			dir = irandom_range(10,80);
		}
	}else{
		yy += 34;
		if(xx>room_width/2){
			dir = irandom_range(190,260);
		}else{
			dir = irandom_range(280,350);
		}
	}
}

var new_inst = instance_create_layer(xx,yy,"Instances",obj_pingas);
new_inst.direction = dir;

alarm[5] = irandom_range(3300,3600)/(spawn_speed*2);