/// @description Insert description here
// You can write your code in this editor
// Get tileset and tile size;
if(position < array_length(temp_tiles)) {
	
    var tiledata = temp_tiles[position][0];
    var orig_x = temp_tiles[position][1];
    var orig_y = temp_tiles[position][2];
    var new_x = orig_x + offset_tiles_x;
    var new_y = orig_y + offset_tiles_y;
		
    if (new_x >= 0 && new_y >= 0) {
        tilemap_set(new_tilemap_id, tiledata, new_x, new_y);
		UpdateOccupiedTiles(global.OccupiedTiles, new_x,new_y,true);
    }
	position++;
}
if(totalTime / (array_length(temp_tiles) - 1) < 1){
	alarm[0] = 1;
}
else{
	alarm[0] = totalTime / (array_length(temp_tiles) - 1);
}

if(position >= array_length(temp_tiles)){
	instance_destroy(self);
}
