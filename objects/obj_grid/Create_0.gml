/// @description Insert description here
// You can write your code in this editor
grid = mp_grid_create(0,0, room_width/48,room_height/48,48,48);

mp_grid_add_instances(grid, obj_Wall_parent, 0);

alarm[0] = 1;