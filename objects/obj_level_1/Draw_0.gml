draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_text);


if(room==rm_level_1){
	draw_text(20,20,"Punteggio: " + string(score));
	draw_text(20,40,"Vite: " + string(lives));
}