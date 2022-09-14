randomize();
phase = 0;

//metto al centro della stanza il mio carro armato e il boss
var my_0=instance_find(obj_tank_0_boss, 0);
var my_1=instance_find(obj_tank_1_boss, 0);
my_0.x=room_width/2;
my_0.y=room_height/2;
my_1.x=room_width/2;
my_1.y=room_height/2;
var boss_base=instance_find(obj_tank_enemy_boss_base, 0);
boss_base.x=room_width/2;
boss_base.y=room_height/2 - room_height/4;

boss_mid_phases=instance_find(obj_boss_mid_phases, 0);

layer_laser = layer_create(110,"Laser_layer");
particles_system_laser = part_system_create_layer(layer_laser,false);
particle_type_laser_against_wall = part_type_create();
part_type_shape(particle_type_laser_against_wall,pt_shape_flare);
part_type_scale(particle_type_laser_against_wall,2,2);
part_type_life(particle_type_laser_against_wall,3,5);
part_type_color2(particle_type_laser_against_wall,make_colour_rgb(255,248,153),make_colour_rgb(255,242,0));
part_type_orientation(particle_type_laser_against_wall,0,359,0,0,true);


layer_laser_2 = layer_create(-80,"Laser_layer_2");
particles_system_laser_2 = part_system_create_layer(layer_laser_2,false);
particle_type_laser_from_cannon = part_type_create();
part_type_shape(particle_type_laser_from_cannon,pt_shape_flare);
part_type_scale(particle_type_laser_from_cannon,1,1);
part_type_life(particle_type_laser_from_cannon,3,5);
part_type_color2(particle_type_laser_from_cannon,make_colour_rgb(255,248,153),make_colour_rgb(255,242,0));
part_type_orientation(particle_type_laser_from_cannon,0,359,0,0,true);


layer_smoke_missile = layer_create(320,"Smoke_layer");
particles_system_smoke_missile = part_system_create_layer(layer_smoke_missile,false);
particle_type_smoke_from_missile = part_type_create();
part_type_shape(particle_type_smoke_from_missile,pt_shape_smoke);
part_type_scale(particle_type_smoke_from_missile,1,1);
part_type_life(particle_type_smoke_from_missile,10,15);
part_type_color2(particle_type_smoke_from_missile,c_black,c_gray);
part_type_alpha2(particle_type_smoke_from_missile,1,0);
part_type_orientation(particle_type_smoke_from_missile,0,359,1,0,false);
part_type_size(particle_type_smoke_from_missile,0.1,0.1,0,false);


layer_explosion_a = layer_create(110,"Laser_explosion");
layer_explosion_b = layer_create(109,"Laser_explosion");
layer_explosion_c = layer_create(108,"Laser_explosion");
particles_system_explosion_a = part_system_create_layer(layer_explosion_a,false);
particles_system_explosion_b = part_system_create_layer(layer_explosion_b,false);
particles_system_explosion_c = part_system_create_layer(layer_explosion_c,false);
particle_type_explosion_against_wall_1 = part_type_create();
part_type_shape(particle_type_explosion_against_wall_1,pt_shape_explosion);
part_type_size(particle_type_explosion_against_wall_1,1.5,1.5,0,false);
part_type_life(particle_type_explosion_against_wall_1,60,60);
part_type_alpha2(particle_type_explosion_against_wall_1,1,0);
part_type_orientation(particle_type_explosion_against_wall_1,0,359,0,0,false);
part_type_color1(particle_type_explosion_against_wall_1,c_yellow);
particle_type_explosion_against_wall_2 = part_type_create();
part_type_shape(particle_type_explosion_against_wall_2,pt_shape_explosion);
part_type_size(particle_type_explosion_against_wall_2,1,1,0,false);
part_type_life(particle_type_explosion_against_wall_2,60,60);
part_type_alpha2(particle_type_explosion_against_wall_2,1,0);
part_type_orientation(particle_type_explosion_against_wall_2,0,359,0,0,false);
part_type_color1(particle_type_explosion_against_wall_2,c_orange);
particle_type_explosion_against_wall_3 = part_type_create();
part_type_shape(particle_type_explosion_against_wall_3,pt_shape_explosion);
part_type_size(particle_type_explosion_against_wall_3,0.5,0.5,0,false);
part_type_life(particle_type_explosion_against_wall_3,60,60);
part_type_alpha2(particle_type_explosion_against_wall_3,1,0);
part_type_orientation(particle_type_explosion_against_wall_3,0,359,0,0,false);
part_type_color1(particle_type_explosion_against_wall_3,c_red);


layer_sparks = layer_create(-80,"Laser_sparks");
particles_system_sparks = part_system_create_layer(layer_sparks,false);
particle_type_sparks_before_laser = part_type_create();
part_type_shape(particle_type_sparks_before_laser,pt_shape_spark);
part_type_scale(particle_type_sparks_before_laser,0.1,0.1);
part_type_life(particle_type_sparks_before_laser,20,25);
part_type_color2(particle_type_sparks_before_laser,make_colour_rgb(255,248,153),make_colour_rgb(255,242,0));
part_type_orientation(particle_type_sparks_before_laser,0,359,0,0,true);
part_type_alpha2(particle_type_sparks_before_laser,0,1);





current_bg_boss_music=undefined;


