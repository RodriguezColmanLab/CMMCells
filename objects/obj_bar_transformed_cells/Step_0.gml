/// @description Update count
count = instance_number(obj_cell_transformed);
if (instance_exists(obj_lost)) {
	count = count_max; // Make bar full if game is lost	
}