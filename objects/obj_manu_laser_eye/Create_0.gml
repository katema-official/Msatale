x=obj_manu_head.x_manu_laser_eye;
y=obj_manu_head.y_manu_laser_eye;

/*
max_angle_laser=30;
vel_laser=1;
steps_half_laser=30;
speed_to_change_inclination=0;
image_anglee=0;
*/

//speed_value=1;	//>0
//steps_angle=30;



//logica per il movimento del laser
actual_speed=1.9;		//1.6		//1.8,1.8,0.06
speed_at_center=1.9;	//1.6
speed_de_acceleration=0.065;		//0.5

image_angle=0;

init=0;
hor_1=1;
from_hor_to_low=2;
low=3;
from_low_to_hor=4;
hor_2=5;
from_hor_to_up=6;
up=7;
from_up_to_hor=8;

state_laser_eye=init;


c1=0;



image_alpha=0;

//logica per l'alpha del laser

time_to_fade=60;
time_to_blind=18;
x_scale_acceleration=0.1;
image_alpha_deceleration=1/time_to_fade;

init2=0;
set_xscale_alpha_to_0=1;
alpha_equals_1=2;
laser_fade_out=3;

state_alpha_laser=init2;

c2=0;





