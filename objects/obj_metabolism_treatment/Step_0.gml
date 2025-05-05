/// @description Countdown
animation_fraction += 0.1 / game_get_speed(gamespeed_fps);
// Apply therapy
with (obj_cell_transformed) {
	var _growth_speed = growth_speed_max * growth_multiplier;
	if (_growth_speed > 0) {
		if (random(1) < 0.15 * 1 / game_get_speed(gamespeed_fps)) {
			effect_create_layer(other.layer, ef_explosion, x, y, 2, cell_color);
			instance_destroy();
		}
	}
}
if (animation_fraction >= 1) {
	instance_destroy();	
	audio_stop_sound(snd_metabolism_treatment);
}