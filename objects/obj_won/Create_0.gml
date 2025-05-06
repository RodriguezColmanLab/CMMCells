/// @description Stop cells, variables, sound
game_time_seconds = 0;
with (obj_cell) {
	growth_speed_max = 0;
}
audio_play_sound(snd_win, 0, false);
