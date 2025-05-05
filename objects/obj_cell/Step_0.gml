/// @description Grow


growth_multiplier = 1;
if (object_index != obj_cell_transformed) {
	// We have a normal cell
	// Presence of transformed cells inhibits growth, presence of helper cells allows growth
	
	growth_multiplier = 0; // Normal cells only grow near helper cells
	if (instance_number(obj_cell_helper) > 0) {
		var _nearest_helper_cell = instance_nearest(x, y, obj_cell_helper);
		if (point_distance(x, y, _nearest_helper_cell.x, _nearest_helper_cell.y) < 200) {
			growth_multiplier = 1; // Near a helper cell, can grow
		}
	}
}

// Grow
var _growth_speed = growth_speed_max * growth_multiplier;
if (_growth_speed > 0) {
	image_xscale += random(_growth_speed);
	image_yscale = image_xscale;
}

if (image_xscale > 1.1) {
	// Cell division
	growth_speed_max = growth_speed_max * (0.9 + random(0.2));
	
	image_xscale = 0.4 + random(0.2);	
	image_yscale = image_xscale;
	var _width = bbox_right - bbox_left;
	
	x -= _width / 2;
	
	var _new_cell = instance_create_layer(x + _width, y, layer, object_index);
	_new_cell.image_xscale = image_xscale;
	_new_cell.image_yscale = image_yscale;
	_new_cell.growth_speed_max = growth_speed_max;
}

if (!is_undefined(cell_fixture)) {
	physics_remove_fixture(id, cell_fixture);
}

var _fixture = physics_fixture_create();
physics_fixture_set_circle_shape(_fixture, CELL_BASE_RADIUS * image_xscale);
physics_fixture_set_density(_fixture, 0.5);
physics_fixture_set_restitution(_fixture, 0.1);
physics_fixture_set_linear_damping(_fixture, 0.1);
physics_fixture_set_angular_damping(_fixture, 0.1);
physics_fixture_set_friction(_fixture, 0.2);
cell_fixture = physics_fixture_bind(_fixture, id);
physics_fixture_delete(_fixture);

