/// @description Handle cooldowns

// Handle cooldown
if (cooldown_steps > 0) {
	cooldown_steps -= 1;
}
// Move back in room once transformed cells are present
if (instance_exists(obj_cell_transformed)) {
	x = xstart;	
}