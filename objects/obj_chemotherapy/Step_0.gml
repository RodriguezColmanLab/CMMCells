/// @description Countdown
animation_fraction += 0.3 / game_get_speed(gamespeed_fps);
if (animation_fraction == 1) {
	// Apply therapy
	with (obj_cell) {
	var _growth_speed = growth_speed_max * growth_multiplier;
		if (_growth_speed > 0) {
			if (random(1) < 0.6) {
				effect_create_layer(other.layer, ef_explosion, x, y, 2, cell_color);
				instance_destroy();
			}
		}
	}
	instance_destroy();	
}