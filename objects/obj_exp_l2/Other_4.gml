if(room==rm_level_2_2){
	var lpath = path_add();
	//path_add_point(lpath, 320, 95, 100);
	path_add_point(lpath,95,95,100);
	path_add_point(lpath,543,95,100);
	
	var i1 = instance_nearest(x,y,obj_tank_enemy_b_0);
	with(i1){
		path_start(lpath,1,path_action_reverse,true);
		path_position=0;
		x = path_get_point_x(lpath,0);
		y = path_get_point_y(lpath,0);
	}
	var i2 = instance_nearest(x,y,obj_tank_enemy_t_0);
	with(i2){
		look_down=true;
		sight_distance=130;
		start_position_angle=190;
	}
}
if(room==rm_level_2_3){
	var lpath = path_add();
	path_add_point(lpath,80,192,100);
	path_add_point(lpath,80,384,100);
	
	var i1 = instance_position(62,271,obj_tank_enemy_b_0);
	with(i1){
		path_start(lpath,1,path_action_reverse,true);
		path_position=0;
	}
	var i2 = instance_position(80,192,obj_tank_enemy_t_0);
	with(i2){
		sight_distance=160;
		look_right=true;
		start_position_angle=45;
	}
	
	
	
	var rpath = path_add();
	path_add_point(rpath,560,192,100);
	path_add_point(rpath,560,384,100);
	
	var i3 = instance_position(576,271,obj_tank_enemy_b_0);
	with(i3){
		path_start(rpath,1,path_action_reverse,true);
		path_position=00;
	}
	var i4 = instance_position(560,192,obj_tank_enemy_t_0);
	with(i4){
		sight_distance=160;
		look_left=true;
		start_position_angle=135;
	}



}
if(room==rm_level_2_5){
	var bottompath = path_add();
	path_add_point(bottompath,190,445,100);
	path_add_point(bottompath,510,445,100);
	
	var i1 = instance_position(320,432,obj_tank_enemy_b_0);
	with(i1){
		path_start(bottompath,1,path_action_reverse,true);
		path_position=0;
	}
	var i2 = instance_position(190,445,obj_tank_enemy_t_0);
	with(i2){
		sight_distance=80;
		look_up=true;
		start_position_angle=20;
	}
	//secondo
	var rightpath = path_add();
	path_add_point(rightpath,590,430,100);
	path_add_point(rightpath,590,45,100);
	
	var i3 = instance_position(588,239,obj_tank_enemy_b_0);
	with(i3){
		path_start(rightpath,1,path_action_reverse,true);
		path_position=0;
	}
	var i4 = instance_position(590,430,obj_tank_enemy_t_0);
	with(i4){
		sight_distance=124;
		look_left=true;
		start_position_angle=120;
	}
	//terzo
	var toppath = path_add();
	path_add_point(toppath,50,45,100);
	path_add_point(toppath,415,45,100);
	
	var i5 = instance_position(240,48,obj_tank_enemy_b_0);
	with(i5){
		path_start(toppath,1,path_action_reverse,true);
		path_position=0;
	}
	var i6 = instance_position(50,45,obj_tank_enemy_t_0);
	with(i6){
		sight_distance=64;
		look_down=true;
		start_position_angle=220;
	}
}

if(room==rm_level_2_7){
	var p1 = path_add();
	path_add_point(p1,605,445,100);
	path_add_point(p1,30,445,100);
	
	var i1 = instance_position(311,439,obj_tank_enemy_b_0);
	with(i1){
		path_start(p1,1,path_action_reverse,true);
		path_position=0;
	}
	var i2 = instance_position(605,445,obj_tank_enemy_t_0);
	with(i2){
		sight_distance=100;
		look_up=true;
		start_position_angle=1;
	}
	
	
	var p2 = path_add();
	path_add_point(p2,80,40,100);
	path_add_point(p2,605,40,100);
	
	var i3 = instance_position(311,37,obj_tank_enemy_b_0);
	with(i3){
		path_start(p2,1,path_action_reverse,true);
		path_position=0;
	}
	var i4 = instance_position(80,40,obj_tank_enemy_t_0);
	with(i4){
		sight_distance=100;
		look_down=true;
		start_position_angle=181;
	}
	
	
}

c1=0;
start_calculating_enemies=false;
alarm[3] = 1; //attivo la matrice degli sprite
