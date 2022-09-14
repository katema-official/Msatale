event_inherited();

x=unique_base.x2;
y=unique_base.y2;
target=instance_nearest(x,y,obj_tank_1_boss);
this_laser.x = x + lengthdir_x(39,image_angle);
this_laser.y = y + lengthdir_y(39,image_angle);
this_laser.image_angle=image_angle;

switch(system.phase){
	case 0:
	
	break;
	
	
	case 1:
		//se sono morto sta bonooo
		//if(!instance_exists(target)){
			//stato_cannone=rimetti_a_posto_le_variabili;	
		//}
		
		switch(stato_cannone){
			case fermo:
				this_laser.image_alpha=0;
				i1++;
				if(i1%300==0 && instance_exists(target)){
					stato_cannone=trova_ang_target;
				}
			break;
			case trova_ang_target:
				ang_target=point_direction(x,y,target.x,target.y);
				audio_play_sound(choose(Gaster_Blaster_Charge,Gaster_Blaster_Charge_2),1,false);
				stato_cannone=aggiorna_img_ang;
			break;
			case aggiorna_img_ang:
				
				dir_spark=irandom_range(image_angle-45,image_angle+45);
				var i = random_range(5,10);
				part_type_direction(system.particle_type_sparks_before_laser,dir_spark+180,dir_spark+180,0,false);
				part_type_speed(system.particle_type_sparks_before_laser,0.3,0.6,0,false);
				part_particles_create(system.particles_system_sparks,this_laser.x+lengthdir_x(i,dir_spark),this_laser.y+lengthdir_y(i,dir_spark), system.particle_type_sparks_before_laser,20);
				
				
				if(abs(angle_difference(image_angle,ang_target))<=1){
					i1=0;
					stato_cannone=wait;
				}
				if(angle_difference(image_angle,ang_target)<=0){
					image_angle += ceil((abs(angle_difference(image_angle,ang_target))) / velocita_rotazione);
				}else{
					image_angle -= ceil((abs(angle_difference(image_angle,ang_target))) / velocita_rotazione);	
				}
			break;
			case wait:
				i1++;
				
				dir_spark=irandom_range(image_angle-45,image_angle+45);
				var i = random_range(5,10);
				part_type_direction(system.particle_type_sparks_before_laser,dir_spark+180,dir_spark+180,0,false);
				part_type_speed(system.particle_type_sparks_before_laser,0.3,0.6,0,false);
				part_particles_create(system.particles_system_sparks,this_laser.x+lengthdir_x(i,dir_spark),this_laser.y+lengthdir_y(i,dir_spark), system.particle_type_sparks_before_laser,20);
				
				//rimetto a posto l'alpha del laser (sì, lo faccio qui)
				alpha_1=1;
				part_type_alpha1(system.particle_type_laser_against_wall,alpha_1);
				part_type_alpha1(system.particle_type_laser_from_cannon,alpha_1);
				
				if(i1%30==0){
					laser_length=0;
					i=0;
					this_laser.image_angle=image_angle;
					this_laser.image_alpha=1;
					audio_play_sound(Asriel_Laser,2,false);
					stato_cannone=spara;	
				}
			break;
			case spara:
				laser_length=0;
				while(!collision_point(this_laser.x+lengthdir_x(laser_length,image_angle),this_laser.y+lengthdir_y(laser_length,image_angle),obj_collision_0,true,true)){
					if(laser_length<2000){	
						laser_length++;
					}else{
						break;
					}
				}
				this_laser.image_xscale=laser_length;
				this_laser.image_angle=image_angle;
				if(i1<240){
					i1++;
					part_particles_create(system.particles_system_laser,this_laser.x+lengthdir_x(laser_length,image_angle),this_laser.y+lengthdir_y(laser_length,image_angle),system.particle_type_laser_against_wall,1);
					part_particles_create(system.particles_system_laser_2,this_laser.x,this_laser.y,system.particle_type_laser_from_cannon,1);
				}
				if(i1>=240){
					i2++;
					alpha_1-=0.018;
					part_particles_create(system.particles_system_laser,this_laser.x+lengthdir_x(laser_length,image_angle),this_laser.y+lengthdir_y(laser_length,image_angle),system.particle_type_laser_against_wall,1);
					part_type_alpha1(system.particle_type_laser_against_wall,alpha_1);
					part_particles_create(system.particles_system_laser_2,this_laser.x,this_laser.y,system.particle_type_laser_from_cannon,1);
					part_type_alpha1(system.particle_type_laser_from_cannon,alpha_1);
					this_laser.image_alpha-=0.018;
					if(i2%60==0){
						this_laser.image_xscale=1;
						this_laser.image_alpha=0;
						stato_cannone=rimetti_a_posto_le_variabili;
					}
				}
			break;
			case rimetti_a_posto_le_variabili:
				i1=0;
				i2=0;
				ang_target=0;
				laser_length=0;
				stato_cannone=fermo;
			break;
		}
	break;
}