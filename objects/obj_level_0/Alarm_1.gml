global.bone_array=set_bones_array_to_undefined(global.bone_array);
global.bone_exist=false;
if(room!=rm_level_0) exit;
var new_richardson = instance_create_layer(global.xstart_r,global.ystart_r,"instances",obj_richardson);
new_richardson.invincibility=true;
new_richardson.timeline_index=tml_respawn;
new_richardson.timeline_position=0;
new_richardson.timeline_running=true;