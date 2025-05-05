/// @description Activate beam
if (lifetime_steps < 5) {
	return; // Too soon after creation, ignore click	
}
var _min_y = y - beam_width / 2;
var _max_y = y + beam_width / 2;
with (obj_cell) {
	var _min_height = y - CELL_BASE_RADIUS * image_xscale;
	var _max_height = y + CELL_BASE_RADIUS * image_xscale;
	if (_max_height > _min_y && _min_height < _max_y && random(1) < 0.75) {
		effect_create_layer(other.layer, ef_explosion, x, y, 2, cell_color);
		instance_destroy();	
	}
}
audio_play_sound(snd_explosion, 0, false);
instance_destroy();
