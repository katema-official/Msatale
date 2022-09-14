event_inherited();

unique_base=instance_nearest(x,y,obj_tank_enemy_boss_middle);
target=instance_nearest(x,y,obj_tank_1_boss);
system = instance_find(obj_system_boss_tank,0);

velocita_rotazione=10;
laser_length=0;
this_laser = instance_create_depth(x+lengthdir_x(40,image_angle),y+lengthdir_y(40,image_angle),120,obj_laser_1);
alpha_1 = 1;

stato_cannone = 0;
fermo=0;
trova_ang_target=1;
aggiorna_img_ang=2;
wait=3;
spara=4;
rimetti_a_posto_le_variabili=5;

//variabili di servizio
i1=0;
i2=0;
ang_target=0;
dir_spark=0;















