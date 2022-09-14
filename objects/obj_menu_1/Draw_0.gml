if(room!=rm_menu_1) exit;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_8bitoperatorJVE);
draw_text(room_width/2,room_height/3 - 100, "Premi spazio per scegliere un livello");
draw_text(room_width/4,room_height/3,"Livello 0");
draw_text(room_width/4,room_height/3+35,"(Tutorial)");
draw_text(room_width*3/4,room_height/3,"Livello 1");
draw_text(room_width/4,room_height*2/3,"Livello 2");
draw_text(room_width*3/4,room_height*2/3,"Livello 3");

if(((keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(vk_left)) || (keyboard_check_pressed(vk_right)) || (keyboard_check_pressed(vk_space))) && key_has_been_pressed==false){
	key_has_been_pressed = true;
	level_0_evidenced = true;
}

if(key_has_been_pressed && level_0_evidenced){
	draw_text_color(room_width/4,room_height/3,"Livello 0",c_yellow,c_yellow,c_yellow,c_yellow,1);
	draw_text_color(room_width/4,room_height/3+35,"(Tutorial)",c_yellow,c_yellow,c_yellow,c_yellow,1);
}
if(level_1_evidenced){
	draw_text_color(room_width*3/4,room_height/3,"Livello 1",c_yellow,c_yellow,c_yellow,c_yellow,1);
}
if(level_2_evidenced){
	draw_text_color(room_width/4,room_height*2/3,"Livello 2",c_yellow,c_yellow,c_yellow,c_yellow,1);
}
if(level_3_evidenced){
	draw_text_color(room_width*3/4,room_height*2/3,"Livello 3",c_yellow,c_yellow,c_yellow,c_yellow,1);
}



if(level_0_evidenced){
	if(keyboard_check_pressed(vk_right)){
		level_1_evidenced = true;
		level_0_evidenced = false;
	}
	if(keyboard_check_pressed(vk_down)){
		level_2_evidenced = true;
		level_0_evidenced = false;
	}
}

if(level_1_evidenced){
	if(keyboard_check_pressed(vk_left)){
		level_1_evidenced = false;
		level_0_evidenced = true;
	}
	if(keyboard_check_pressed(vk_down)){
		level_1_evidenced = false;
		level_3_evidenced = true;
	}
}

if(level_2_evidenced){
	if(keyboard_check_pressed(vk_right)){
		level_3_evidenced = true;
		level_2_evidenced = false;
	}
	if(keyboard_check_pressed(vk_up)){
		level_0_evidenced = true;
		level_2_evidenced = false;
	}
}

if(level_3_evidenced){
	if(keyboard_check_pressed(vk_left)){
		level_2_evidenced = true;
		level_3_evidenced = false;
	}
	if(keyboard_check_pressed(vk_up)){
		level_1_evidenced = true;
		level_3_evidenced = false;
	}
}

