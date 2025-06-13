// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PasteTemplateData(temp_tiles, tileset_id, tileWidth, tileHeight, new_layer_name, offset_tiles_x, offset_tiles_y, debug_mode){

	// Get tileset and tile size;
	var maxx = 0
	var maxy = 0
	//calc max x and y
	 for (var i = 0; i < array_length(temp_tiles); i++){
		 maxx = max(maxx, temp_tiles[i][1]);
		 maxy = max(maxy, temp_tiles[i][2]);
	 }
	 var map_w = maxx+1;
	 var map_h = maxy+1;
	 
    if (layer_exists(new_layer_name)) {
        if (debug_mode) show_debug_message("Layer '" + new_layer_name + "' already exists. Deleting and recreating.");
        layer_destroy(layer_get_id(new_layer_name));
    }
	//spawnes a BuildRoom object to handle the line by line building
    var new_layer_id = layer_create(0, new_layer_name);
    var new_tilemap_id = layer_tilemap_create(new_layer_id, 0, 0, tileset_id, map_w + abs(offset_tiles_x), map_h + abs(offset_tiles_y));//, tile_w, tile_h);
	var temp = instance_create_layer(0,0, "TempObjects", obj_BuildRoom);
	temp.new_layer_name = new_layer_name;
	temp.offset_tiles_x = offset_tiles_x;
	temp.offset_tiles_y = offset_tiles_y;
	temp.temp_tiles = temp_tiles;
	temp.tileHeight = tileHeight;
	temp.tileWidth = tileWidth;
	temp.tileset_id = tileset_id;
	temp.new_tilemap_id = new_tilemap_id;
}