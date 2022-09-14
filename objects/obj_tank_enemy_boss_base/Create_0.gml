event_inherited();


//randomize();
system = instance_find(obj_system_boss_tank,0);
//le fasi del boss, ce ne sono 3

still=0;	//tutti gli stati dell'automa del movimento
up=1;
upright=2;
right=3;
downright=4;
down=5;
downleft=6;
left=7;
upleft=8;
rotate=9;

tmp=0;	//variabili per le transizioni da uno stato all'altro (fase 1)
c=0;	//variabile che controlla la velocità di rotazione
tmp2=0;	//per capire dove devo ruotare quando transito di stato (fase 1)
tmp3=0;	//angle_difference tra dove sono e dove voglio ruotare
tmp4=-1;	//variabile per salvarmi la direzione dove ho sbattuto (1-3-5-7)
tmp4tmp=-1;
//counterperevitareproblemiconilcollisioncircle=0;
image_angle+=360;
no_collision_circle=0;
collided=1;
new_direction_after_collision=2;
wait_some_steps=3;
state_for_collision_circle=no_collision_circle;

state_1=still;



counter_1=0;	//counter che a 60 sceglie una posizione per ruotare





sprite_up=90;
sprite_left=180;
sprite_down=270;
sprite_right=0;
sprite_up_right=45;
sprite_up_left=135;
sprite_down_left=225;
sprite_down_right=315;
r1=20;
r2=70;
r3=110;
r4=160;
r5=200;
r6=250;
r7=290;
r8=340;



