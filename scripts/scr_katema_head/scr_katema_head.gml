function scr_katema_head() {
	switch(state_katema_oval){
		case init_oval:
		//	hspeed+=curr_hspeed_to_sum;	//al centro dell'infinito vado a vel max,
		//	vspeed+=curr_vspeed_to_sum;	//in basso a destra
			state_katema_oval=o1;
		break;
		case o1:	//mi sposto dal centro verso il basso a destra
			hspeed=curr_hspeed_to_sum;
			vspeed+=curr_vspeed_to_sum;
			curr_hspeed_to_sum-=decrease_factor_hspeed_o;	//da max a 0
			curr_vspeed_to_sum-=decrease_factor_vspeed_o;
			if(curr_vspeed_to_sum<=0 || curr_hspeed_to_sum<=0){
				curr_vspeed_to_sum=0;
				curr_hspeed_to_sum=0;
				state_katema_oval=o2;
			}
		break;	
		case o2:	//vado in alto partendo da basso destra
			vspeed+=curr_vspeed_to_sum;
			curr_vspeed_to_sum-=decrease_factor_vspeed_o;
			if(curr_vspeed_to_sum<= -max_vspeed_o){
				curr_vspeed_to_sum= -max_vspeed_o;
				state_katema_oval=o3;
			}
		break;
		case o3:	//uguale ma rallento
			vspeed+=curr_vspeed_to_sum;
			curr_vspeed_to_sum+=decrease_factor_vspeed_o;
			if(curr_vspeed_to_sum>=0){
				curr_vspeed_to_sum=0;
				state_katema_oval=o4;
			}
	
		break;
		case o4:	//da alto a destra a centro
			hspeed=curr_hspeed_to_sum;
			vspeed+=curr_vspeed_to_sum
			curr_hspeed_to_sum-=decrease_factor_hspeed_o;	//da 0 a -max
			curr_vspeed_to_sum+=decrease_factor_vspeed_o;
			if(curr_vspeed_to_sum>=max_vspeed_o || curr_hspeed_to_sum<= -max_hspeed_o){
				curr_vspeed_to_sum=max_vspeed_o;
				curr_hspeed_to_sum= -max_hspeed_o;
				state_katema_oval=o5;
			}
		break;
		case o5:	//da centro in basso a sinistra
			hspeed=curr_hspeed_to_sum;
			vspeed+=curr_vspeed_to_sum;
			curr_hspeed_to_sum+=decrease_factor_hspeed_o;	//da -max a 0
			curr_vspeed_to_sum-=decrease_factor_vspeed_o;
			if(curr_vspeed_to_sum<=0 || curr_hspeed_to_sum>=0){
				curr_vspeed_to_sum=0;
				curr_hspeed_to_sum=0;
				state_katema_oval=o6;
			}
		break;
		case o6:	//vado in alto partendo da basso sinistra
			vspeed+=curr_vspeed_to_sum;
			curr_vspeed_to_sum-=decrease_factor_vspeed_o;
			if(curr_vspeed_to_sum<= -max_vspeed_o){
				curr_vspeed_to_sum= -max_vspeed_o;
				state_katema_oval=o7;
			}
		break;
		case o7:	//uguale ma rallento
			vspeed+=curr_vspeed_to_sum;
			curr_vspeed_to_sum+=decrease_factor_vspeed_o;
			if(curr_vspeed_to_sum>=0){
				curr_vspeed_to_sum=0;
				state_katema_oval=o8;
			}
		break;
		case o8:	//mi sposto dal centro verso il basso a destra
			hspeed=curr_hspeed_to_sum;
			vspeed+=curr_vspeed_to_sum;
			curr_hspeed_to_sum+=decrease_factor_hspeed_o;	//da 0 a max
			curr_vspeed_to_sum+=decrease_factor_vspeed_o;
			if(curr_vspeed_to_sum>=max_vspeed_o || curr_hspeed_to_sum>=max_hspeed_o){
				curr_vspeed_to_sum=max_vspeed_o;
				curr_hspeed_to_sum=max_hspeed_o;
				state_katema_oval=o1;
			}
		break;
	
	
	}


}
