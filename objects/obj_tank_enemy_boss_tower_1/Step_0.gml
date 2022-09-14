event_inherited();

x=unique_base.x1;
y=unique_base.y1;

/*
if(instance_exists(target)){
	image_angle = point_direction(x,y,target.x,target.y);
}
*/

switch(system.phase){
	case 1:
		
		if(instance_exists(target)){
			image_angle = point_direction(x,y,target.x,target.y);
		}
		
		switch(state_spara_missili){	
			case nulla:
				i1++;
				if(i1%60==0){
					state_spara_missili=crea_missile;
				}
			break;
			case crea_missile:
				this_missile=instance_create_depth(x+lengthdir_x(28,image_angle),y+lengthdir_y(28,image_angle),310,obj_missile_1);
				this_missile.image_angle = image_angle;
				state_spara_missili=sposto_in_avanti;
			break;
			case sposto_in_avanti:
				this_missile.image_angle = image_angle;
				new_dist+=0.2;
				this_missile.x = x+lengthdir_x(28+new_dist,image_angle);
				this_missile.y = y+lengthdir_y(28+new_dist,image_angle);
				if(new_dist>=8){
					i1=0;
					state_spara_missili=wait;	
				}
			break;
			case wait:
				i1++;
				this_missile.image_angle = image_angle;
				this_missile.x = x+lengthdir_x(28+new_dist,image_angle);
				this_missile.y = y+lengthdir_y(28+new_dist,image_angle);
				if(i1>=60){
					this_missile.direction=image_angle;
					this_missile.depth = 110;
					xtmp = this_missile.x;
					ytmp = this_missile.y;
					var i = 0;
					while( !collision_point(xtmp+lengthdir_x(i,this_missile.direction),ytmp+lengthdir_y(i,this_missile.direction),obj_collision_0,true,true) ){
						i++;	
					}
					xxtmp=xtmp+lengthdir_x(i,this_missile.direction);
					yytmp=ytmp+lengthdir_y(i,this_missile.direction);
					state_spara_missili=fuoco;
				}
			break;
			case fuoco:
				this_missile.speed+=0.2;
				part_particles_create(system.particles_system_smoke_missile,this_missile.x,this_missile.y,system.particle_type_smoke_from_missile,10);
				part_type_speed(system.particle_type_smoke_from_missile,0.3,0.6,0.2,0);
				part_type_direction(system.particle_type_smoke_from_missile,this_missile.image_angle+120,this_missile.image_angle+240,0,0);
				//controllo: ho hittato una parete?
				if(instance_place(this_missile.x+lengthdir_x(12,image_angle),this_missile.y+lengthdir_y(12,image_angle),obj_collision_0)){
					state_spara_missili = distruzione;
				}
				
				//controllo: ho hittato un altro proiettile?
				t=collision_rectangle(this_missile.x+lengthdir_x(6,image_angle+90), this_missile.y+lengthdir_y(6, image_angle+90), 
				this_missile.x+lengthdir_x(12,image_angle-27), this_missile.y+lengthdir_y(12,image_angle-27), obj_bullet_1, false, true);
				if(t!=noone){
					xxtmp = t.x;
					yytmp = t.y;
					instance_destroy(t);
					t=noone;
					state_spara_missili = distruzione;
				}
				
				//controllo: ho hittato il player?
				if(collision_rectangle(this_missile.x+lengthdir_x(6,image_angle+90), this_missile.y+lengthdir_y(6, image_angle+90), 
				this_missile.x+lengthdir_x(12,image_angle-27), this_missile.y+lengthdir_y(12,image_angle-27), target, false, true)){
					xxtmp = target.x;
					yytmp = target.y;
					state_spara_missili = distruzione;
				}
				
				
				//devo mettere un else o qualcosa del genere per quando il missile entra in contatto col carro armato
			break;
			/*case calcolo_spawn_esplosione:
				var i = 0;
				while(collision_point(xtmp+lengthdir_x(i,this_missile.image_angle-180),ytmp+lengthdir_y(i,this_missile.image_angle-180),obj_collision_0,true,true)){
					i++;
				}
				xxtmp=xtmp+lengthdir_x(i,this_missile.image_angle-180);
				yytmp=ytmp+lengthdir_y(i,this_missile.image_angle-180);
				instance_create_layer(xxtmp,yytmp,"Instances",obj_collision_0);
				state_spara_missili=distruzione;
			break;*/
			case distruzione:
				part_particles_create(system.particles_system_explosion_a, xxtmp,yytmp, system.particle_type_explosion_against_wall_1,1);
				part_particles_create(system.particles_system_explosion_b, xxtmp,yytmp, system.particle_type_explosion_against_wall_2,1);
				part_particles_create(system.particles_system_explosion_c, xxtmp,yytmp, system.particle_type_explosion_against_wall_3,1);
				instance_destroy(this_missile);
				state_spara_missili=rimetti_a_posto_le_variabili;
			break;
			case rimetti_a_posto_le_variabili:
				i1=0;
				new_dist=0;
				xtmp=0;
				ytmp=0;
				xxtmp=0;
				yytmp=0;
				state_spara_missili=nulla;
			break;
	
		}
	
	break;
}




