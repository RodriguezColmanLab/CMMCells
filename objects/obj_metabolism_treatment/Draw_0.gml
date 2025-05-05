/// @description Highlight cells that are going to be killed
draw_set_color(c_black);
with (obj_cell_transformed) {
	var _growth_speed = growth_speed_max * growth_multiplier;
	if (_growth_speed > 0) {
		var _radius = CELL_BASE_RADIUS * image_xscale;
		draw_set_alpha(random(other.animation_fraction * 0.8));
		draw_circle(x, y, _radius, false);
	}
}
draw_set_alpha(1.0);