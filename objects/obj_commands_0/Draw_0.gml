if(room==rm_commands){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_8bitoperatorJVE);
	draw_text_transformed_color(room_width/2,room_height/5-30,"COMANDI",4,4,0,c_blue,c_blue,c_blue,c_blue,1);
	draw_text_ext_transformed(room_width/2,room_height/2,
	"FRECCIA SU: accelera\nFRECCIA GIÙ: decelera\nFRECCE DX/SX: ruota\nSPAZIO: spara",31,room_width-140,2,2,0);
	draw_text_ext_transformed(room_width/2,room_height*4/5+20,
	"Vinci con 500 punti",50,room_width-130,1,1,0);
	draw_set_color(c_gray);
	draw_text_transformed(room_width/2,room_height*4/5+60,"Premi spazio per iniziare",0.5,0.5,0);	
	draw_set_color(c_white);
}