/// @description Draw beam preview

draw_set_color(c_white);
draw_set_alpha(0.5);


var _min_y = y - beam_width / 2;
var _max_y = y + beam_width / 2;

draw_rectangle(0, _min_y, room_width, _max_y, false);

draw_set_alpha(0.2);
with (obj_cell) {
	var _min_height = y - CELL_BASE_RADIUS * image_xscale;
	var _max_height = y + CELL_BASE_RADIUS * image_xscale;
	if (_max_height > _min_y && _min_height < _max_y) {
		var _radius = CELL_BASE_RADIUS * image_xscale;
		draw_circle(x, y, _radius, false);
	}
}

draw_set_alpha(1.0);
