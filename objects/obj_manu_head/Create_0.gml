s=0;
s=obj_manu_control.manu_scale;

image_xscale=s;
image_yscale=s;

x=obj_manu_body.x_head;
y=obj_manu_body.y_head;

x_manu_laser_eye=x+4*image_xscale+image_xscale/2;
y_manu_laser_eye=y;


speed_at_center=0.2;			//0.01:0.25=0.012:0.3			
speed_de_acceleration=0.008;


init=0;
max_vspeed_pos=1;
from_center_to_low=2;
low=3;
from_low_to_center=4;
max_vspeed_neg=5;
from_center_to_high=6;
high=7;
from_high_to_center=8;

state_movement_manu_head=init;


if(room==room_manu_2){
	image_index=10;	
}





counter_temp=-7; 
start_face_change=false;
