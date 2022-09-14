if(room==rm_commands_2){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_fyxedsys)
	draw_text_ext_transformed_color(room_width/2, room_height/5+20, 
	"NUOVI\nCOMANDI",25, 1000, 4,4,0,c_aqua,c_aqua,c_aqua,c_aqua,1);
	draw_text(room_width/2, room_height/2+40,"Usa wasd per muoverti");
	draw_text(room_width/2, room_height/2+90,"Mira con il mouse");
	draw_text(room_width/2, room_height/2+140,"Spara con il tasto sinistro del mouse");
	draw_set_color(c_gray);
	draw_text_transformed(room_width/2,room_height*4/5+60,"Premi spazio per iniziare",0.5,0.5,0);	
	draw_set_color(c_white);
	
}