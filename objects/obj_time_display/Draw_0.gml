/// @description Draws the time
if (display_time_seconds > 0) {
	draw_set_color(c_white);
	draw_set_font(fnt_default);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(x, y, seconds_to_time_string(display_time_seconds));
	
}