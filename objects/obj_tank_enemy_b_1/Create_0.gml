randomize();

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

start_looking_around=false;
research_lines=false;



main = instance_find(obj_tank_0,0);

state1=0;	//main is visible
state2=0;

