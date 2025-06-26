/// @description Insert description here
// You can write your code in this editor
//show_debug_message("Checking player");

path_delete(path);
randomize();
if(random_range(0,1) <= 0.01){
	instance_create_layer(x,y,"TempObjects", obj_spawnCoin);
	show_debug_message("SPawn coin");
}
path = path_add();

FindRandomPath(self, whereTheyCanTravel);

mp_grid_path(obj_grid.grid, path, x,y, target_x, target_y, true);

path_start(path, move_speed, path_action_stop, true);

queuePath = false;

