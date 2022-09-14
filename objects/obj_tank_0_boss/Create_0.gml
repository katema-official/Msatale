sprite_up = image_angle;
sprite_right = image_angle + 90;
sprite_down = image_angle + 180;
sprite_left = image_angle + 270;

sprite_up_right = image_angle - 45;
sprite_down_right = image_angle - 135;
sprite_down_left = image_angle - 225;
sprite_up_left = image_angle - 315;



boss_target=instance_find(obj_tank_enemy_boss_middle, 0);
boss_mid_phases=instance_find(obj_boss_mid_phases, 0);
system = instance_find(obj_system_boss_tank,0);


audio_tank_movement=snd_tank_movement;

