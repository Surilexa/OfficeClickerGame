// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PreviewTemplateData(temp_tiles, tileset_id, tileWidth, tileHeight, new_layer_name, offset_tiles_x, offset_tiles_y, debug_mode){
	// Get tileset and tile size;
	
	var maxx = 0
	var maxy = 0
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
    var new_layer_id = layer_create(0, new_layer_name);
	//layer_set_visible(new_layer_id, false);
    var new_tilemap_id = layer_tilemap_create(new_layer_id, 0, 0, tileset_id, map_w + abs(offset_tiles_x), map_h + abs(offset_tiles_y));//, tile_w, tile_h);

    // Rebuild tiles with offset
    for (var i = 0; i < array_length(temp_tiles); i++) {
        var tiledata = temp_tiles[i][0];
        var orig_x = temp_tiles[i][1];
        var orig_y = temp_tiles[i][2];
        var new_x = orig_x + offset_tiles_x;
        var new_y = orig_y + offset_tiles_y;

        if (new_x >= 0 && new_y >= 0) {
            tilemap_set(new_tilemap_id, tiledata, new_x, new_y);

            if (debug_mode) {
                show_debug_message(
                    "Tile moved from '" + 
                    "' to '" + new_layer_name + 
                    "': (" + string(orig_x) + "," + string(orig_y) + 
                    ") -> (" + string(new_x) + "," + string(new_y) + ")"
                );
            }
        } else if (debug_mode) {
            show_debug_message(
                "Tile skipped on '" + 
                "' due to out-of-bounds after offset: (" + string(orig_x) + "," + string(orig_y) + 
                ") -> (" + string(new_x) + "," + string(new_y) + ")"
            );
        }
    }
	//array_push(global.previewLayers, new_layer_name);
	//ds_map_add(global.previewLayers,new_layer_name,new_layer_id);
}