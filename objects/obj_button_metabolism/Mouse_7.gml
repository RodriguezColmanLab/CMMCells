/// @description Activate treatments
if (cooldown_steps > 0) {
	return;	
}
if (instance_exists(obj_metabolism_treatment)) {
	return;	
}

instance_create_layer(x, y, LAYER_EFFECTS, obj_metabolism_treatment);


// Set cooldown for this button only
cooldown_steps_max = game_get_speed(gamespeed_fps) * 10;
cooldown_steps = cooldown_steps_max;
