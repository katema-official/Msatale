if keyboard_check_pressed(ord("F")){
   if window_get_fullscreen(){
      window_set_fullscreen(false);
   }
   else{
      window_set_fullscreen(true);
   }
}
   
 
counter_1++;
if(counter_1%steps_create_note==0){
	if(lato_nota==1){
		var pos = random_range(0,room_width/2);
		lato_nota=2;
	}else if(lato_nota==2){
		var pos = random_range(room_width/2,room_width);
		lato_nota=1;
	}
	if(room==room_manu_1){
		instance_create_depth(pos,-28,250,obj_nota_musicale);
	}else if(room==room_manu_2){
		instance_create_depth(pos,-28,350,obj_nota_musicale);
	}
}
   
  
  
//fase due
if(room==room_manu_2 && keyboard_check_pressed(vk_space)){
	//creazione Katema
	kat1 = instance_create_depth(obj_manu_body.x,obj_manu_body.y+7,202,obj_katema_body);
	kat2 = instance_create_depth(obj_manu_head.x,obj_manu_head.y+7,201,obj_katema_head);
	kat2.image_index=0;
	kat1.image_blend=make_color_hsv(0,0,255/2);
	kat2.image_blend=make_color_hsv(0,0,255/2);
	kat1.image_alpha=0;
	kat2.image_alpha=0;
	create_katema_script=true;	
	
	//movimento braccio Manu
	move_manu_arm=true;
	
	//raggi laser bianchi
	l1 = instance_create_depth(obj_manu_head.x_manu_laser_eye,obj_manu_head.y_manu_laser_eye,-100,obj_white_laser);
	l1.image_xscale=3;
	l1.image_yscale=0.3;
	l1.speed_rot=4;
	l1.dir_rot=0;
	l1.image_angle=45;
	l1.image_alpha=0;
	
	l2 = instance_create_depth(obj_manu_head.x_manu_laser_eye,obj_manu_head.y_manu_laser_eye,-100,obj_white_laser);
	l2.image_xscale=3;
	l2.image_yscale=0.3;
	l2.speed_rot=3;
	l2.dir_rot=1;
	l2.image_angle=45+90;
	l2.image_alpha=0;
	
	l3 = instance_create_depth(obj_manu_head.x_manu_laser_eye,obj_manu_head.y_manu_laser_eye,-100,obj_white_laser);
	l3.image_xscale=3;
	l3.image_yscale=0.3;
	l3.speed_rot=4;
	l3.dir_rot=0;
	l3.image_angle=45+180;
	l3.image_alpha=0;
	
	l4 = instance_create_depth(obj_manu_head.x_manu_laser_eye,obj_manu_head.y_manu_laser_eye,-100,obj_white_laser);
	l4.image_xscale=3;
	l4.image_yscale=0.3;
	l4.speed_rot=3;
	l4.dir_rot=1;
	l4.image_angle=45+270;
	l4.image_alpha=0;

	white_lasers_life=true;
	
}
   
if(room==room_manu_2 && create_katema_script==true){
	if(kat1.image_alpha<1){
		kat1.image_alpha+=1/15;
		kat2.image_alpha+=1/15;
	}
	k1++;
	kat1.hspeed=hspeed_katema_body;
	kat2.hspeed=hspeed_katema_body;
	if(k1>=time_before_decelleration){
		hspeed_katema_body-=dec_factor_katema_body
	}
	if(hspeed_katema_body=0){
			dec_factor_katema_body=dec_factor_katema_body/2-0.1;
	}
	
	k2++;
	if(k2>=57){
		create_katema_script=false;
		kat1.hspeed=0;
		kat2.hspeed=0;
		restore_characters_attitude=true;	//fase tre
		activate1=true;
	}
}


if(move_manu_arm==true){
	if(obj_manu_r_arm.image_angle<=60){
		obj_manu_r_arm.image_angle+=5;
	}
}





if(white_lasers_life==true){
	l_c++;
	if(l_c<=10){
		l1.image_alpha+=0.05;	
		l2.image_alpha+=0.05;	
		l3.image_alpha+=0.05;	
		l4.image_alpha+=0.05;	
	}
	if(l_c>=42){
		l1.image_alpha-=1/15;	
		l2.image_alpha-=1/15;	
		l3.image_alpha-=1/15;		
		l4.image_alpha-=1/15;		
	}
	if(l1.image_alpha<=0){
		instance_destroy(l1);
		instance_destroy(l2);	
		instance_destroy(l3);	
		instance_destroy(l4);	
		white_lasers_life=false;
	}
}


//fase tre
if(restore_characters_attitude && activate1){
	instance_create_depth(x,y,-100,obj_manu_laser_eye);
	move_manu_arm=false;
	var r_w = instance_create_layer(obj_manu_body.x_manu_r_wing,obj_manu_body.y_manu_r_wing,"Wings",obj_manu_wing);
	r_w.its_right_wing=true;
	r_w.image_angle+=2;
	var l_w = instance_create_layer(obj_manu_body.x_manu_l_wing,obj_manu_body.y_manu_l_wing,"Wings",obj_manu_wing);
	l_w.image_xscale=-l_w.s;
	l_w.its_left_wing=true;
	l_w.image_angle-=2;
	activate1=false;
}
