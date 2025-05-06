/// @description Keep game time, check for completion
if (spawned_transformed_cell && !game_over) {
	game_time_steps += 1;
	if (instance_exists(obj_time_display)) {
		obj_time_display.display_time_seconds = game_time_steps / game_get_speed(gamespeed_fps);	
	}
	
	var _transformed_cells = instance_number(obj_cell_transformed);
	var _normal_cells = instance_number(obj_cell) - _transformed_cells;
	if (_normal_cells == 0 || _transformed_cells > CELL_COUNT_MAX_TRANSFORMED) {
		// You lost
		game_over = true;
		instance_create_layer(x, y, LAYER_EFFECTS, obj_lost);
	} else if (_normal_cells >= CELL_COUNT_MAX_WILDTYPE && _transformed_cells == 0) {
		// You won
		game_over = true;
		var _won = instance_create_layer(x, y, LAYER_EFFECTS, obj_won);
		_won.game_time_seconds = game_time_steps / game_get_speed(gamespeed_fps);	
	}
	
}
