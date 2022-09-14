event_inherited();

unique_base=instance_nearest(x,y,obj_tank_enemy_boss_middle);
target=instance_nearest(x,y,obj_tank_1_boss);
system = instance_find(obj_system_boss_tank,0);

nulla=0;
crea_missile=1;
sposto_in_avanti=2;
wait=3;
fuoco=4;
distruzione=5;
rimetti_a_posto_le_variabili=6;
calcolo_spawn_esplosione=7;

state_spara_missili=nulla;

i1 = 0;
new_dist=0;
xtmp=0;
ytmp=0;
xxtmp=0;
yytmp=0;

t=noone;




