for(var i = 0; i<array_height_2d(all_objects); ++i){
	instance_activate_object(all_objects[i, 9]);
	starting_pause=false;
}
instance_activate_all();
all_objects=0;
start_calculating_enemies=true;
/*if(starting_pause==true){
	instance_activate_all();	
	starting_pause=false;
	
	all_objects=0;
}*/

//alarm[4] = 1; //cerco di mettere a posto il path del tank giallo











