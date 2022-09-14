//number_of_bullets_main = 0;
unique_base = instance_nearest(x,y,obj_tank_0_boss);
bullet_pot=5;
bullet_act=0;
automa_state=0;
i = 0;
j=0;
bullet_tot = 5;

sound_shoot=snd_tank_first_shoot_0;


boss_target=instance_find(obj_tank_enemy_boss_middle, 0);
boss_mid_phases=instance_find(obj_boss_mid_phases, 0);
system = instance_find(obj_system_boss_tank,0);



//general_system = instance_find(obj_level_2_transition_system,0);

