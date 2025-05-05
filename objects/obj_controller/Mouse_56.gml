/// @description Take action
if (!allow_clicks) {
	return;	
}

if (!spawned_transformed_cell) {
	// Spawn first cancer cell
	var _bottom_left_cell = instance_nearest(0, room_height, obj_cell);
	with (_bottom_left_cell) {
		instance_change(obj_cell_transformed, false);
		growth_speed_max *= 2;
		audio_play_sound(snd_bell, 1, false);
		effect_create_above(ef_ring, x, y, 2, c_red);
	}
	
	spawned_transformed_cell = true;
	buttons_set_cooldown(20);
}