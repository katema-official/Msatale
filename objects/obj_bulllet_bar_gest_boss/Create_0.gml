
tank_target=instance_find(obj_tank_1_boss, 0);
camera_target=instance_find(obj_camera_manager_boss, 0);
boss_target=instance_find(obj_tank_enemy_boss_middle, 0);

b_bar_in_boss_level=instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 30, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2,-1000, obj_bullets_info)
b_bar_in_boss_level.image_xscale=3;
b_bar_in_boss_level.image_yscale=3;
b_bar_in_boss_level.x=camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 30;
b_bar_in_boss_level.y=camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;
b_bar_x_to=camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 30;;
b_bar_y_to=camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;;





//gestisco anche la healthbar del boss qui
boss_health_points_total=150
margin_health_points=1;



health_bar_boss_margin_left=instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - boss_health_points_total/2 - sprite_get_width(spr_health_bar_boss_margin),
							camera_get_view_y(view_camera[0]) -30, -10000, obj_health_bar_boss_margin);

health_bar_boss_middle=instance_create_depth(health_bar_boss_margin_left.x + sprite_get_width(spr_health_bar_boss_margin), 
					health_bar_boss_margin_left.y, -10000, obj_health_bar_boss_middle);

health_bar_boss_margin_right=instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + boss_health_points_total/2 + sprite_get_width(spr_health_bar_boss_margin),
							camera_get_view_y(view_camera[0]) -30, -10000, obj_health_bar_boss_margin_1);


health_bar_boss=instance_create_depth(health_bar_boss_margin_left.x + sprite_get_width(spr_health_bar_boss_margin)*camera_get_view_height(view_camera[0])/480 - margin_health_points*camera_get_view_height(view_camera[0])/480,
									health_bar_boss_margin_right.y, -9000, obj_health_boss);

health_bar_boss.image_speed=0;




