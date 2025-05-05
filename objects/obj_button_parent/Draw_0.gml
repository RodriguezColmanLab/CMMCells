/// @description Draw hover and cooldown effect
draw_self();
if (cooldown_steps > 0) { 
	// Cooldown effect
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	draw_set_alpha(1);
	var _fraction = cooldown_steps / cooldown_steps_max;
	var _draw_width = _fraction * (bbox_right - bbox_left);
	draw_rectangle(bbox_left, bbox_top, bbox_left + _draw_width, bbox_bottom, false);
} else if (mouse_x > bbox_left && mouse_x < bbox_right && mouse_y > bbox_top && mouse_y < bbox_bottom) {
	// Hover effect
	draw_set_alpha(0.5);
	draw_set_color(c_white);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	draw_set_alpha(1.0);
}
