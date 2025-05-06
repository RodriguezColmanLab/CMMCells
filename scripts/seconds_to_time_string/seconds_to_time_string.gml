/// @desc Converts a time like "62.3" to "01:02.30"
function seconds_to_time_string(_time_seconds) {
	var _minutes = floor(_time_seconds / 60);
	var _seconds = floor(_time_seconds % 60);
	var _fraction = floor((_time_seconds % 1) * 100);
	var _minutes_str = string(_minutes);
	var _seconds_str = string(_seconds);
	var _fraction_str = string(_fraction);
	if (string_length(_minutes_str) == 1) {
		_minutes_str = "0" + _minutes_str;	
	}
	if (string_length(_seconds_str) == 1) {
		_seconds_str = "0" + _seconds_str;	
	}
	if (string_length(_fraction_str) == 1) {
		_fraction_str = "0" + _fraction_str;	
	}
	
	return _minutes_str + ":" + _seconds_str + "." + _fraction_str;
}