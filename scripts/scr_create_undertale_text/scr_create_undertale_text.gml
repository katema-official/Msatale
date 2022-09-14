/// @function create_undertale_text(font, x, y, space_horizontal_next, space_vertical_next, max_characters_in_line, wait_time_draw, sound, text, effect)
/// @param {font} font
/// @param {real} x
/// @param {real} y
/// @param {real} space_horizontal_next
/// @param {real} space_vertical_next
/// @param {real} max_characters
/// @param {real} wait_time_draw
/// @param {} sound
/// @param {string} text
/// @param {real} effect
function create_undertale_text(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {

	font_0=argument0;
	my_x_0=argument1;
	my_y_0=argument2;
	space_horizontal_next_0=argument3;
	space_vertical_next_0=argument4;
	max_characters_in_line_0=argument5;
	wait_time_draw_0=argument6;
	sound_0=argument7;
	text_0=argument8;
	effect_0=argument9;

	this_instance_of_dialogue=instance_create_depth(my_x_0, my_y_0, -1000, obj_dialogue_k_1);
	this_instance_of_dialogue.current_font=font_0;
	this_instance_of_dialogue.x_start=my_x_0;
	this_instance_of_dialogue.y_start=my_y_0;
	this_instance_of_dialogue.space_horizontal_next=space_horizontal_next_0;
	this_instance_of_dialogue.space_vertical_next=space_vertical_next_0;
	this_instance_of_dialogue.max_characters_in_line=max_characters_in_line_0;
	this_instance_of_dialogue.wait_time_draw=wait_time_draw_0;
	this_instance_of_dialogue.sound=sound_0;
	this_instance_of_dialogue.dialogue_text=text_0;
	this_instance_of_dialogue.effect=effect_0;
	draw_set_font(font_0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	return this_instance_of_dialogue;

}



/// @function create_undertale_text_box_general(upper_left_angle_external_box_y, w_box_width, w_box_height, b_box_width, b_box_height, is_sprite_present, spr_index, spr_begin, spr_end, is_asterisk_present, text, max_characters_in_line, wait_time_draw, sound, effect, font, sprite_xscale, sprite_yscale, space_horizontal_next, space_vertical_next)
/// @param {real} upper_left_angle_external_box_y
/// @param {real} w_box_width
/// @param {real} w_box_height
/// @param {real} b_box_width
/// @param {real} b_box_height
/// @param {real} is_sprite_present
/// @param {} spr_index
/// @param {real} spr_begin
/// @param {real} spr_end
/// @param {bool} is_asterisk_present
/// @param {} text
/// @param {real} max_characters_in_line
/// @param {real} wait_time_draw
/// @param {} sound
/// @param {real} effect
/// @param {} font
/// @param {real} sprite_xscale
/// @param {real} sprite_yscale
/// @param {real} space_horizontal_next 
/// @param {real} space_vertical_next

function create_undertale_text_box_general() {

	upper_left_angle_external_box_y_1=argument[0];
	w_box_width_1=argument[1];
	w_box_height_1=argument[2];
	b_box_width_1=argument[3];
	b_box_height_1=argument[4];
	is_sprite_present_1=argument[5];
	spr_index_1=argument[6];
	spr_begin_1=argument[7];
	spr_end_1=argument[8];
	is_asterisk_present_1=argument[9];
	text_1=argument[10];
	max_characters_in_line_1=argument[11];
	wait_time_draw_1=argument[12];
	sound_1=argument[13];
	effect_1=argument[14];
	font_1=argument[15];
	sprite_xscale_1=argument[16];
	sprite_yscale_1=argument[17];
	space_horizontal_next_1=argument[18];
	space_vertical_next_1=argument[19];

	this_instance_of_dialogue=instance_create_depth(0, 0, -900, obj_dialogue_k_2);
	this_instance_of_dialogue.upper_left_angle_external_box_y=upper_left_angle_external_box_y_1;
	this_instance_of_dialogue.w_box_width=w_box_width_1;
	this_instance_of_dialogue.w_box_height=w_box_height_1;
	this_instance_of_dialogue.b_box_width=b_box_width_1;
	this_instance_of_dialogue.b_box_height=b_box_height_1;
	this_instance_of_dialogue.is_sprite_present=is_sprite_present_1;
	this_instance_of_dialogue.spr_index=spr_index_1;
	this_instance_of_dialogue.spr_begin=spr_begin_1;
	this_instance_of_dialogue.spr_end=spr_end_1;
	this_instance_of_dialogue.is_asterisk_present=is_asterisk_present_1;
	this_instance_of_dialogue.text=text_1;
	this_instance_of_dialogue.max_characters_in_line=max_characters_in_line_1;
	this_instance_of_dialogue.wait_time_draw=wait_time_draw_1;
	this_instance_of_dialogue.sound=sound_1;
	this_instance_of_dialogue.effect=effect_1;
	this_instance_of_dialogue.font=font_1;
	this_instance_of_dialogue.sprite_xscale=sprite_xscale_1;
	this_instance_of_dialogue.sprite_yscale=sprite_yscale_1;
	this_instance_of_dialogue.space_horizontal_next=space_horizontal_next_1;
	this_instance_of_dialogue.space_vertical_next=space_vertical_next_1;

	return this_instance_of_dialogue;

}



/// @function create_undertale_text_box(up_or_down, is_sprite_present, spr_index, spr_begin, spr_end, is_asterisk_present, text, wait_time_draw, sound, effect, font, sprite_xscale, sprite_yscale)

/// @param {} up_or_down
/// @param {boolean} is_sprite_present
/// @param {} spr_index
/// @param {real} spr_begin
/// @param {real} spr_end
/// @param {boolean} is_asterisk_present
/// @param {string} text
/// @param {real} wait_time_draw
/// @param {} sound
/// @param {real} effect
/// @param {} font
/// @param {real} sprite_xscale
/// @param {real} sprite_yscale

function create_undertale_text_box() {

	if(!view_visible[0]){
		var up_or_down_0=-1;
		if(argument[0] == 0){
			up_or_down_0=10;
		}else if(argument[0]==1){
			up_or_down_0=room_height - 152 - 10;
		}
	}else{
		var up_or_down_0=-1;
		if(argument[0] == 0){
			up_or_down_0=camera_get_view_x(view_camera[0])+10;
		}else if(argument[0]==1){
			up_or_down_0=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) - 152 - 10;
		}	
	}

	this_instance_of_normal_undertale_dialogue = create_undertale_text_box_general(up_or_down_0, 578, 152, 566, 140, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], 33, argument[7], argument[8], argument[9], argument[10], argument[11], argument[12], 16, 36);

	return this_instance_of_normal_undertale_dialogue;


}


