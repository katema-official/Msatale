event_inherited();

unique_base=instance_nearest(x,y,obj_tank_enemy_boss_base);
x1=x+lengthdir_x(19,image_angle);
y1=y+lengthdir_y(19,image_angle);
x2=x+lengthdir_x(19,image_angle+135);
y2=y+lengthdir_y(19,image_angle+135);
x3=x+lengthdir_x(24,image_angle+225);
y3=y+lengthdir_y(24,image_angle+225);

boss_current_health=150;

boss_health_for_phase_2=100;
boss_health_for_phase_3=50;

system=instance_find(obj_system_boss_tank, 0);

i=0;


is_hit=false;

