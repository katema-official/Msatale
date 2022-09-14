draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
switch(room){
	case rm_level_0:
		draw_text(20,20,"Punteggio: " + string(score));
		draw_text(20,40,"Vite: " + string(lives));
		break;
	case rm_start:
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2,50,
		"TORNA SU MSA4 SSSsss",3,7,0,c_green,c_aqua,c_yellow,c_orange,1);
		draw_text(room_width/2,200,
@"Si vince con 1500 punti!

Premi SU per accelerare
Premi DESTRA e SINISTRA per ruotare la testa di Richardson
Premi SPAZIO per sparare denti

>> PREMI INVIO PER INIZIARE LA SPEDIZIONE PUNITIVA <<

E buona fortuna!
I Ventidivini che non lavorano a msa4 sono esseri orribili...");
	draw_set_halign(fa_left);
		break;
	case rm_win:
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2,50,"HAI VINTO!",3,7,0,c_green,c_green,c_green,c_green,1);
		draw_text(room_width/2,200,"Congratulazioni!");
		draw_text(room_width/2,250,"Vite rimaste: "+string(lives));
		draw_text(room_width/2,300,"PREMI INVIO PER FARLO UN'ALTRA VOLTA");
		draw_set_halign(fa_left);
		break;
	case rm_lose:
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2,50,"DANNAZIONE SOLDATO",3,7,0,c_red,c_red,c_red,c_red,1);
		draw_text(room_width/2,200,"Il tuo schifoso punteggio: " + string(score));
		draw_text(room_width/2,250, "PREMI INVIO PER RIPROVARE");
		draw_set_halign(fa_left);
		break;		
}