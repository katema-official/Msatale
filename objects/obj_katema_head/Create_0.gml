image_xscale=obj_manu_control.manu_scale;
image_yscale=obj_manu_control.manu_scale;

x=obj_katema_body.x_head_katema;
y=obj_katema_body.y_head_katema;


image_index=1;


katema_glowing_eye=false;
kh1=0;

activate1_katema_head=true;
kh2=0;
kh3=0;

automa_glowing_eye=false;



//movimento testa piccolo
start_katema_head_automa=false;
//d11=1   /0.25;
//d12=2    /0.25;
//d21=(1/2)    /0.25;
//d22=1    /0.25;

d11=1   /1;
d12=1    /1;
d21=1   /1;
d22=1    /1;

max_hspeed=(0.25   );//-0.5*(2/10))/d11;		//0.5			//0.5/2
acceleration_factor_hspeed=(0.025)/d12;	//0.05				//0.5/10/2

max_vspeed=(0.25   );//-0.5*(1/5))/d21;		//0.25			//0.5/2
acceleration_factor_vspeed=(0.05)/d22;		//0.05			//0.5/5/2
dummy_vspeed=max_vspeed;

h0=0;
h1=1;
h2=2;
h3=3;
h4=4;
h5=5;
h6=6;
h7=7;
h8=8;

state_k_hspeed=0;
state_k_vspeed=0;




//movimento testa principale


speed_at_center=0.3;
speed_de_acceleration=0.01/2;
dummy_princ_vspeed=speed_at_center;


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



g1=0;







//seconda versione del movimento testa piccolo (SBAGLIATA)
start_katema_head_automa2=false;

d=1;

max_hspeed_o=2/d;
max_vspeed_o=0.01/d;
curr_hspeed_to_sum=max_hspeed_o;
curr_vspeed_to_sum=max_vspeed_o;
decrease_factor_hspeed_o=0.2/d;
decrease_factor_vspeed_o=0.001/d;

init_oval=0;
o1=1;
o2=2;
o3=3;
o4=4;
o5=5;
o6=6;
o7=7;
o8=8;



state_katema_oval=o1;




//decelerazione movimento piccolo testa
slow_down_counter=0;		//2218
slow_down_max_h=(0.25)/10;
slow_down_factor_h=0.025/10;
slow_down_max_v=(0.25)/10;
slow_down_factor_v=0.05/10;


var_stop_1=false;
var_stop_2=false;



t=0;



