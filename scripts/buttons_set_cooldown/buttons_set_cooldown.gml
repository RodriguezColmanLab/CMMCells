/// @desc Sets a cooldown for the treatment buttons.
function buttons_set_cooldown(seconds) {
	var _steps = game_get_speed(gamespeed_fps) * seconds;
	with (obj_button_parent) {
		cooldown_steps_max = _steps;
		cooldown_steps = cooldown_steps_max;	
	}
}