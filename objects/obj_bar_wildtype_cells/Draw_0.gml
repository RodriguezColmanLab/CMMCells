/// @description Draw cell count
draw_self();
if (count > 0) {
	var _x = x + 5;
	var _y = y - 15;
	var _max_width = sprite_width - 10 - 25;
	var _width = 25 + min(count / count_max, 1) * _max_width;
	var _height = sprite_get_height(spr_bar_foreground);

	draw_sprite_stretched_ext(spr_bar_foreground, 0, _x, _y, _width, _height, count_color, 1.0);
}
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_default);
draw_text(x + sprite_width / 2, y - 2, count_label);

