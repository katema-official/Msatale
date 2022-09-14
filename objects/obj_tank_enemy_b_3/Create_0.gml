randomize();

direction = (direction + 360) % 360;

sprite_up = image_angle;
sprite_right = image_angle + 90;
sprite_down = image_angle + 180;
sprite_left = image_angle + 270;

sprite_up_right = image_angle - 45;
sprite_down_right = image_angle - 135;
sprite_down_left = image_angle - 225;
sprite_up_left = image_angle - 315;

left_wall = false;
right_wall = false;
up_wall = false;
down_wall = false;

left_tank = false;
right_tank = false;
up_tank = false;
down_tank = false;


start_looking_around=false;
research_lines=false;



main = instance_find(obj_tank_0,0);

state1=0;	//main is visible
state2=0;


/*
r1=22.5;
r2=22.5+45;
r3=22.5+90;
r4=22.5+135;
r5=22.5+180;
r6=22.5+225;
r7=22.5+270;
r8=22.5+315;
*/
r1 = 20;
r2 = 70;
r3 = 110;
r4 = 160;
r5 = 200;
r6 = 250;
r7 = 290;
r8 = 340;

if(room==rm_level_2_6 || room==rm_level_2_7){
	grid_2_6 = mp_grid_create(0,0,20,15,32,32);		//grid per il chase
	mp_grid_add_instances(grid_2_6,obj_collision_1,false);
	my_path = path_add();
}
if(room==rm_level_2_8){
	grid_2_6 = mp_grid_create(0,0,40,30,32,32);		//grid per il chase
	mp_grid_add_instances(grid_2_6,obj_collision_1,false);
	my_path = path_add();
}