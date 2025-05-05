/// @description Activate radiation beam
if (cooldown_steps > 0) {
	return;	
}
if (instance_exists(obj_beam_radiation)) {
	return;	
}

instance_create_layer(mouse_x, mouse_y, LAYER_EFFECTS, obj_beam_radiation);

// Set cooldown for this button only
cooldown_steps_max = game_get_speed(gamespeed_fps) * 2;
cooldown_steps = cooldown_steps_max;