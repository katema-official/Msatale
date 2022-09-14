if(room==rm_lose_space){
	if(global.level_lose==0){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_fyxedsys);
		draw_text_transformed_color(room_width/2,room_height/4-30,"HAI FALLITO\nIL TUTORIAL",2,2,0,c_red,c_red,c_red,c_red,1);
		draw_text_ext_transformed(room_width/2,room_height/2+20,"Complimenti!\nNon hai capito come giocare.\nPremi spazio per tornare\nal menù dei livelli,\ne vediamo se stavolta capisci\n",40,1000,1,1,0);
		draw_set_color(c_orange);
		draw_text(room_width/2,room_height*4/5, "Punteggio: "+string(score));
		draw_set_color(c_white);
	}
	
	if(global.level_lose==1){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_fyxedsys);
		draw_text_transformed_color(room_width/2,room_height/4-20,"OH NO",4,4,0,c_red,c_red,c_red,c_red,1);
		draw_text_ext_transformed(room_width/2,room_height/2+20,"Vabbè dai, ci sta.\nSu, via quel muso lungo.\nPremi spazio per tornare\nal menù dei livelli",40,1000,1,1,0);
		draw_set_color(c_orange);
		draw_text(room_width/2,room_height*4/5, "Punteggio: "+string(score));
		draw_set_color(c_white);
	}
}
