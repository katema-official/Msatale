if(!has_bounced){
	if(place_meeting(x,y-5,obj_collision_0)){
		vspeed = -vspeed;
		has_bounced=true;
	}
	if(place_meeting(x,y+5,obj_collision_0)){
		vspeed = -vspeed;
		has_bounced=true;
	}
	if(place_meeting(x-5,y,obj_collision_0)){
		hspeed = -hspeed;
		has_bounced=true;
	}
	if(place_meeting(x+5,y,obj_collision_0)){
		hspeed = -hspeed;
		has_bounced=true;
	}
}else {
	if(place_meeting(x,y,obj_collision_0)){
		instance_destroy();	
	}
}