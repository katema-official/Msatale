if(starting_pause==true){
	for(var i = array_height_2d(all_objects)-1; i>0; i--){
		draw_sprite_ext(all_objects[i, 0], all_objects[i, 1],  all_objects[i, 2],  all_objects[i, 3],
		all_objects[i, 4], all_objects[i, 5], all_objects[i, 6], all_objects[i, 7], all_objects[i, 8]);
	}
	if(room!=rm_level_2_8){
		draw_sprite_ext(spr_bullets_info,5,room_width-30,room_height/2,3,3,0,c_white,1);
	}else{
		//in = instance_create_depth(camera_get_view_x(cam)+640-30,camera_get_view_y(cam)+480/2,-1000,obj_bullets_info);
		//in.image_index=5;
		//in.image_xscale=3;
		//in.image_yscale=3;
		
		//draw_sprite_ext(spr_bullets_info,5,camera_get_view_x(cam)+640-30,camera_get_view_y(cam)+480/2,3,3,0,c_white,1);
	}
}

//draw_text(room_width-100, room_height-300, string(c1));













/*a0 = instance_find(obj_tank_1,0);
if(instance_exists(a0)){
	draw_text(room_width-70,room_height-70,"Bullet_pot: " + string(a0.bullet_pot) + "\n" + "Bullet_act: "+string(a0.bullet_act));
	
}

draw_set_font(fnt_sans);
draw_text(room_width/2,room_height/2,string(enemies));
a1 = instance_find(obj_tank_enemy_t_0,0);
if(instance_exists(a1)){
	draw_triangle(a1.x,a1.y,a1.x1,a1.y1,a1.x2,a1.y2,true);
	draw_text(20,20,string(a1.start_position_angle_2));
	draw_text(20,40,"State carro armato giallo"+string(a1.state));
}

main = instance_find(obj_tank_0,0);

a2 = instance_find(obj_tank_enemy_b_1,0);
if(instance_exists(a2)){
	draw_line(a2.x+22,a2.y-16, a2.x+22,a2.y+16);
	draw_line(a2.x+16,a2.y-22, a2.x-16,a2.y-22);
	draw_text(30,30,string(a2.state2));
	draw_circle_color(a2.x,a2.y,200,c_purple,c_purple,true);
}

if(instance_exists(main) && instance_exists(a2)){
	draw_line_color(a2.x,a2.y,main.x,main.y,c_purple,c_purple);
}

	a3 = instance_find(obj_tank_enemy_b_2,0);
	if(instance_exists(a3)){
		draw_set_alpha(0.3);
		mp_grid_draw(a3.grid_2_6);	
		draw_set_alpha(1);
		draw_path(a3.my_path,a3.x,a3.y,false);
		draw_circle_color(a3.x,a3.y,300,c_red,c_red,true);
		draw_circle_color(a3.x,a3.y,a3.second_circle_raggio,c_red,c_orange,true);
		draw_text(20,20,string(a3.direction));
		draw_text(190,20,string(a3.r1));//  string(a3.r2),10,20)//+ string(a3.r3)+ string(a3.r4)+ string(a3.r5)+ string(a3.r6)+ string(a3.r7)+ string(a3.r8), 10,5);
		draw_text(190,40,string(a3.r2))
		draw_text(190,60,string(a3.r3))
		draw_text(190,80,string(a3.r4))
		draw_text(190,100,string(a3.r5))
		draw_text(190,120,string(a3.r6))
		draw_text(190,140,string(a3.r7))
		draw_text(190,160,string(a3.r8))
	
	
	
	}	
if(instance_exists(main) && instance_exists(a3)){
	draw_line_color(a3.x,a3.y,main.x,main.y,c_red,c_red);
}

a4=instance_find(obj_tank_enemy_b_3,0);
if(instance_exists(a4)){
	draw_circle_color(a4.x,a4.y,400,c_gray,c_gray,true);	
	draw_path(a4.my_path,a4.x,a4.y,false);
}

a5=instance_find(obj_tank_enemy_boss_base,0);
if(instance_exists(a5)){
	draw_text(room_width-140,60,"TDevo andare = " + string(a5.tmp2) + "\n" + "image_angle = " + string(a5.image_angle) + "\ntmp3 = " + string(a5.tmp3));
	
}

boss_base = instance_find(obj_tank_enemy_boss_base,0);
if(instance_exists(boss_base)){
	draw_circle(boss_base.x,boss_base.y,140,true);	
	draw_text(room_width-400,room_height-200,"state_for_collision_circle = " + string(boss_base.state_for_collision_circle));
	draw_text(room_width-400,room_height-180,"tmp (nuovo stato di movimento) = "+ string(boss_base.tmp));
	draw_text(room_width-400,room_height-160,"tmp4 (nuovo stato dopo muro) = "+ string(boss_base.tmp4));
}

tower_2 = instance_find(obj_tank_enemy_boss_tower_2,0);
if(instance_exists(tower_2)){
	draw_text(room_width-400,room_height-140,"angle_target = "+ string(tower_2.ang_target));
	draw_text(room_width-400,room_height-120,"stato_cannone = "+ string(tower_2.stato_cannone));
	draw_text(room_width-400,room_height-100,"ang_diff = "+ string(angle_difference(tower_2.image_angle,tower_2.ang_target)));
}*/