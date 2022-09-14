if(obj_manu_control.create_katema_script==true || g1<3){
	x=obj_katema_body.x_head_katema;
	y=obj_katema_body.y_head_katema;
	if(obj_manu_control.create_katema_script==false){
		g1++;	//questa variabile mi serve solo per far sì che la testa si rimetta al suo posto dopo
	}			//lo script, altrimenti sarebbe leggermente disallineata
}


if(obj_manu_control.restore_characters_attitude && activate1_katema_head){
	image_index=1;
	activate1_katema_head=false;
}



if(keyboard_check_pressed(ord("G"))){
	kh1=0;
	kh2=0;
	kh3=0;
	katema_glowing_eye=true;	
}

if(katema_glowing_eye){
	if(kh1==0){
		image_index++;	
	}
	kh1++;
	if(kh1==27){
		image_index++;
	}
	if(kh1==54){
		image_index++;
	}
	if(kh1>=54+84){
		kh2++;
		if(kh2%2==0 && kh2<=8){
			image_index++;
		}
		if(kh2>=9){
			automa_glowing_eye=true;
			katema_glowing_eye=false;
		}
	}
	
}


if(automa_glowing_eye){
	kh3++;
	if(kh3%3==0){
		if(image_index==8){
			image_index=9;	
		}else if(image_index==9){
			image_index=8;	
		}
	}
	if(kh3>=56){
		image_index=1;
		automa_glowing_eye=false;
		start_katema_head_automa=true;
	}
}



//NON VERO movimento piccolo testa

if(start_katema_head_automa2){
	scr_katema_head();
}






//movimento piccolo testa

if(start_katema_head_automa){
	//orizzontale
	switch(state_k_hspeed){
		case h0:
			hspeed=max_hspeed;
			state_k_hspeed=h1;
		break;
		case h1:
			hspeed-=acceleration_factor_hspeed;
			if(hspeed<=0){
				hspeed=0;
				state_k_hspeed=h2;
			}
		break;
		case h2:
			if(hspeed!=0){
				hspeed=0;	
			}
			state_k_hspeed=h3;
		break;
		case h3:
			hspeed-=acceleration_factor_hspeed;
			if(hspeed<=-max_hspeed){
				hspeed=-max_hspeed;
				state_k_hspeed=h4;
			}
		break;
		case h4:
			if(hspeed!=-max_hspeed){
				hspeed=-max_hspeed;
			}
			state_k_hspeed=h5;
		break;
		case h5:
			hspeed+=acceleration_factor_hspeed;
			if(hspeed>=0){
				hspeed=0;
				state_k_hspeed=h6;
			}
		break;
		case h6:
			if(hspeed!=0){
				hspeed=0;
			}
			state_k_hspeed=h7;
		break;
		case h7:
			hspeed+=acceleration_factor_hspeed;
			if(hspeed>=max_hspeed){
				hspeed=max_hspeed;
				state_k_hspeed=h8;
			}
		break;
		case h8:
			if(hspeed!=max_hspeed){
				hspeed=max_hspeed;
			}
			state_k_hspeed=h1;
		break;
		default:
		
		break;
	}
	
	
	
	
	
	//verticale
	switch(state_k_vspeed){
		case h0:
			vspeed+=max_vspeed;
			state_k_vspeed=h1;
		break;
		case h1:
			vspeed-=acceleration_factor_vspeed;
			dummy_vspeed-=acceleration_factor_vspeed;
			if(dummy_vspeed<=0){
				dummy_vspeed=0;
				state_k_vspeed=h2;
			}
		break;
		case h2:
			if(dummy_vspeed!=0){
				dummy_vspeed=0;	
			}
			state_k_vspeed=h3;
		break;
		case h3:
			vspeed-=acceleration_factor_vspeed;
			dummy_vspeed-=acceleration_factor_vspeed;
			if(dummy_vspeed<=-max_vspeed){
				dummy_vspeed=-max_vspeed;
				state_k_vspeed=h4;
			}
		break;
		case h4:
			if(dummy_vspeed!=-max_vspeed){
				dummy_vspeed=-max_vspeed;
			}
			state_k_vspeed=h5;
		break;
		case h5:
			vspeed+=acceleration_factor_vspeed;
			dummy_vspeed+=acceleration_factor_vspeed;
			if(dummy_vspeed>=0){
				dummy_vspeed=0;
				state_k_vspeed=h6;
			}
		break;
		case h6:
			if(dummy_vspeed!=0){
				dummy_vspeed=0;
			}
			state_k_vspeed=h7;
		break;
		case h7:
			vspeed+=acceleration_factor_vspeed;
			dummy_vspeed+=acceleration_factor_vspeed;
			if(dummy_vspeed>=max_vspeed){
				dummy_vspeed=max_vspeed;
				state_k_vspeed=h8;
			}
		break;
		case h8:
			if(dummy_vspeed!=max_vspeed){
				dummy_vspeed=max_vspeed;
			}
			state_k_vspeed=h1;
		break;
		default:
			dummy_vspeed=0;
		break;
	}

}





//conclusione movimento testa piccolo
if(start_katema_head_automa){
	slow_down_counter++;
	if(slow_down_counter>=2218){
		
		
		if(state_k_hspeed==h8 && !var_stop_1){
			max_hspeed-=slow_down_max_h;
			acceleration_factor_hspeed-=slow_down_factor_h;
			if(max_hspeed==0){
				hspeed=0;
				state_k_hspeed=-1;
				var_stop_1=true;	
			}
		}
		
		
		if(state_k_vspeed==h2 && !var_stop_2){
			max_vspeed-=slow_down_max_v;
			acceleration_factor_vspeed-=slow_down_factor_v;
			dummy_vspeed=max_vspeed;
			if(max_vspeed==0){
				dummy_vspeed=0;
				state_k_vspeed=-1;
				var_stop_2=true;	
			}
		}
		
		
		
	}
}







//movimento principale testa (come quello del corpo)


switch(state_movement_manu_body){
	
	case init:
		vspeed=speed_at_center;
		state_movement_manu_body=max_vspeed_pos;
	break;
	
	case max_vspeed_pos:
		if(dummy_princ_vspeed!=speed_at_center){
			dummy_princ_vspeed=speed_at_center;	
		}
		state_movement_manu_body=from_center_to_low;
	break;
	
	case from_center_to_low:
		vspeed-=speed_de_acceleration;
		dummy_princ_vspeed-=speed_de_acceleration;
		if(dummy_princ_vspeed<=0){
			dummy_princ_vspeed=0;
			state_movement_manu_body=low;
		}
	break;
	
	case low:
		state_movement_manu_body=from_low_to_center;
	break;
	
	case from_low_to_center:
		vspeed-=speed_de_acceleration;
		dummy_princ_vspeed-=speed_de_acceleration;
		if(dummy_princ_vspeed<=-speed_at_center){
			dummy_princ_vspeed=-speed_at_center;
			state_movement_manu_body=max_vspeed_neg;
		}
	break;
	
	case max_vspeed_neg:
		if(dummy_princ_vspeed!=-speed_at_center){
			dummy_princ_vspeed=-speed_at_center;	
		}
		state_movement_manu_body=from_center_to_high;
	break;
	
	case from_center_to_high:
		vspeed+=speed_de_acceleration;
		dummy_princ_vspeed+=speed_de_acceleration;
		if(dummy_princ_vspeed>=0){
			dummy_princ_vspeed=0;
			state_movement_manu_body=high;
		}
	break;
	
	case high:
		state_movement_manu_body=from_high_to_center;
	break;
	
	case from_high_to_center:
		vspeed+=speed_de_acceleration;
		dummy_princ_vspeed+=speed_de_acceleration;
		if(dummy_princ_vspeed>=speed_at_center){
			dummy_princ_vspeed=speed_at_center;
			state_movement_manu_body=max_vspeed_pos;
		}
	break;
	
}
