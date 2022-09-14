draw_text(camera_x+20, camera_y+20, "display w = " + string(display_get_width()));
draw_text(camera_x+20, camera_y+40, "display h = " + string(display_get_height()));
draw_text_transformed(camera_x+20, camera_y+100, "window w = " + string(window_get_width()), 3, 3, 0);
draw_text_transformed(camera_x+20, camera_y+140, "window h = " + string(window_get_height()), 3, 3, 0);