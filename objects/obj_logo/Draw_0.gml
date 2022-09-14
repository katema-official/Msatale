draw_set_alpha(1);
if(draw_logo) draw_sprite_ext(spr_logo,1,room_width/2,room_height/2,1,1,0,c_white,1);

if(draw_press){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2,room_height*3/4,"Premi spazio per proseguire");	
}