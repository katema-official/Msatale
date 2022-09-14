s=0;
s=obj_manu_control.manu_scale;

image_xscale=s;
image_yscale=s;

x_right_arm=x+20*image_xscale;
y_right_arm=y-22*image_yscale;

x_left_arm=x-20*image_xscale;
y_left_arm=y-22*image_yscale;

x_head=x;
y_head=y-49*image_yscale;

x_leg=x-2;
y_leg=y+28*image_yscale;

x_manu_r_wing=x+18;
y_manu_r_wing=y-16;
x_manu_l_wing=x-18;
y_manu_l_wing=y-16;




speed_at_center=0.25;
speed_de_acceleration=0.01;


init=0;
max_vspeed_pos=1;
from_center_to_low=2;
low=3;
from_low_to_center=4;
max_vspeed_neg=5;
from_center_to_high=6;
high=7;
from_high_to_center=8;

state_movement_manu_body=init;