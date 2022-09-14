if(room==rm_won_stage_level_2){
	draw_set_font(fnt_8bitoperatorJVE);
	draw_sprite_ext(spr_tank_lives,0,room_width/2-80,room_height/2,2,2,0,c_white,1);
	draw_text_transformed(room_width/2+10,room_height/2,"x ",2,2,0);
	draw_text_transformed(room_width/2+50,room_height/2,string(past_lives_count),up_xscale,up_yscale,0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(room_width/2,room_height/2-120,"Livello " + string(global.current_level_2_stage),4,4,0);
}

if(room==rm_won_stage_level_2){
	if(room_to_return==rm_level_2_4){
		draw_text(room_width/2,room_height/2+60,"Vita extra!");
	}	
}