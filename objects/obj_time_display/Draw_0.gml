/// @description Draws the time
if (display_time_seconds > 0) {

	
	var _minutes = floor(display_time_seconds / 60);
	var _seconds = floor(display_time_seconds % 60);
	var _fraction = floor((display_time_seconds % 1) * 100);
	var _minutes_str = string(_minutes);
	var _seconds_str = string(_seconds);
	var _fraction_str = string(_fraction);
	if (string_length(_minutes_str) == 1) {
		_minutes_str = "0" + _minutes_str;	
	}
	if (string_length(_seconds_str) == 1) {
		_seconds_str = "0" + _seconds_str;	
	}
	if (string_length(_fraction_str) == 1) {
		_fraction_str = "0" + _fraction_str;	
	}
	
	draw_set_color(c_white);
	draw_set_font(fnt_default);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(x, y, _minutes_str + ":" + _seconds_str + "." + _fraction_str);
	
}