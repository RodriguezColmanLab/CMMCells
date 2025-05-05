/// @description Apply downwards force
event_inherited();

var _has_nearby_transformed_cell = false;
if (instance_exists(obj_cell_transformed)) {
	var _closest_transformed_cell = instance_nearest(x, y, obj_cell_transformed);
	var _closest_transformed_cell_distance = point_distance(x, y, _closest_transformed_cell.x, _closest_transformed_cell.y);
	if (_closest_transformed_cell_distance < 150) {
		_has_nearby_transformed_cell = true;	// This will make the cell leave the room
	}
}
if (_has_nearby_transformed_cell) {
	// Take away attachment if transformed cell is close
	has_attachment = false;	
} else if (abs(ystart - y) < 20) {
	// Give back attachment if transformed is gone and cell is low enough
	has_attachment = true;
}

if (has_attachment) {
	physics_apply_impulse(x, y, 0, 1000);
}
