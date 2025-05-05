/// @description Keep game time
if (spawned_transformed_cell) {
	game_time_steps += 1;
	if (instance_exists(obj_time_display)) {
		obj_time_display.display_time_seconds = game_time_steps / game_get_speed(gamespeed_fps);	
	}
}
