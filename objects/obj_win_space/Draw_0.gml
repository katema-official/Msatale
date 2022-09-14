if(room==rm_win_space){
	if(global.level_won==0){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_fyxedsys);
		draw_text_transformed_color(room_width/2,room_height/4,"LIVELLO COMPLETATO",2,2,0,c_green,c_green,c_green,c_green,1);
		draw_text_ext_transformed(room_width/2,room_height/2+15,"Complimenti! Hai superato il tutorial.\nPremi spazio per tornare\nal menù dei livelli",40,1000,1,1,0);
	}
	
	if(global.level_won==1){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_fyxedsys);
		draw_text_transformed_color(room_width/2,room_height/4,"LIVELLO COMPLETATO",2,2,0,c_green,c_green,c_green,c_green,1);
		draw_text_ext_transformed(room_width/2,room_height/2+15,"Premi spazio per tornare\nal menù dei livelli",40,1000,1,1,0);
	}
}
