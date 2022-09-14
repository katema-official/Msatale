instance_destroy();
var tipo;
with(other){
	repeat(2){
		switch(sprite_index){
			case spr_ven_big: 
				var new_ven = instance_create_layer(x,y,"Instances",obj_ven);
				new_ven.sprite_index = spr_ven_medium;
				break;
			case spr_ven_medium:
				var new_ven = instance_create_layer(x,y,"Instances",obj_ven);
				new_ven.sprite_index = spr_ven_small;
				break;
		}
	}
	tipo = sprite_index;
	instance_destroy();
}
if(tipo = spr_ven_big) score += 30;
else if(tipo = spr_ven_medium) score += 20;
else if(tipo = spr_ven_small) score += 10;