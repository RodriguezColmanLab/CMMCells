/// @description Set up physics, variables
cell_fixture = undefined;

// Actual growth speed is random(growth_speed_max * growth_speed_multiplier)
growth_speed_max = 0.003;
growth_multiplier = 1; // Updated by step event based on micro-environment

cell_color = c_blue; // Used for explosions
