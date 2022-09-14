randomize();
unique_base = instance_nearest(x,y,obj_tank_enemy_b_1);



main = instance_find(obj_tank_1,0);

main_is_visible=false;
state=0;
is_shooting = false;
x1=0;
y1=0;
x2=0;
y2=0;
sight_distance = 0;

state1 = 0;

image_angle = irandom_range(0,359);

coin = irandom_range(0,1);