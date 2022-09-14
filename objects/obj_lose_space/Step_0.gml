if(keyboard_check_pressed(vk_space)){
	if(room==rm_lose_space && proceed){
		room_goto(rm_menu_1);
	}
}