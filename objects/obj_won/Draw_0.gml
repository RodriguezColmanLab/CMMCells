/// @description Draw won text
draw_set_color(c_black);
draw_set_alpha(0.2);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1.0);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_big);
draw_text(room_width / 2, room_height / 2, "Gewonnen!\n" + seconds_to_time_string(game_time_seconds));
