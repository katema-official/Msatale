box_esterno_x1 = (room_width-578)/2;
box_esterno_y1 = (room_height-152-8);
box_esterno_x2 = box_esterno_x1 + 578;
box_esterno_y2 = box_esterno_y1 + 152;
box_interno_x1 = box_esterno_x1 + 6;
box_interno_y1 = box_esterno_y1 + 6;
box_interno_x2 = box_esterno_x2 - 6;
box_interno_y2 = box_esterno_y2 - 6;
height_box_interno = box_interno_y2 - box_interno_y1;
spr_box_x1 = box_interno_x1;
spr_box_y1 = box_interno_y1;
spr_box_x2 = box_interno_x1 + height_box_interno;
spr_box_y2 = box_interno_y1 + height_box_interno;
spr_center_coordinate_x = (spr_box_x1 + spr_box_x2)/2;
spr_center_coordinate_y = (spr_box_y1 + spr_box_y2)/2;

portrait = -1; //sarà -1 di default, quando creeremo un dialogo e ci servirà lo setteremo dal chiamante
portrait_image_index = 0;
//portrait = spr_pingas
portrait_xscale = 2; //così posso modificarlo in modo appropriato
portrait_yscale = 2; //idem
asterisco = false;

message[0] = "Ciao bello I would like you to walk to the end of the room by yourself";
message[1] = "now go fuck yourself please eeeeeeeeeeee eeeeeeeeeee eeeeeeeee eeeeeeee eeee eeeeee eeeeeee";

message_current = 0;
timer = 0;
//cutoff = 0;

//t = 0;
//increment = 1;

done = false;