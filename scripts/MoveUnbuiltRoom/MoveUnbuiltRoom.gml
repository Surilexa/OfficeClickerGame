
function MoveUnbuiltRoom(layers_array, offset_tiles_x, offset_tiles_y, debug_mode){
    var layer_count = array_length(layers_array);

    for (var l = 0; l < layer_count; l++) {
        var layer_name = layers_array[l];
        var layer_id = layer_get_id(layer_name);
        if (layer_id == -1) {
            if (debug_mode) show_debug_message("Layer '" + string(layer_name) + "' not found. Skipping.");
            continue;
        }

        var tilemap_id = layer_tilemap_get_id(layer_id);
        if (tilemap_id == -1) {
            if (debug_mode) show_debug_message("Tilemap for layer '" + string(layer_name) + "' not found. Skipping.");
            continue;
        }

        if (debug_mode) show_debug_message("Processing layer: " + string(layer_name));

        var map_w = tilemap_get_width(tilemap_id);
        var map_h = tilemap_get_height(tilemap_id);

        // Store tiles
        var temp_tiles = [];
        for (var a = 0; a < map_h; a++) {
            for (var b = 0; b < map_w; b++) {
                var tiledata = tilemap_get(tilemap_id, b, a);
                if (tiledata != 0) {
                    array_push(temp_tiles, [tiledata, b, a]);
                }
            }
        }

        if (debug_mode) show_debug_message("Found " + string(array_length(temp_tiles)) + " tiles on " + string(layer_name));

        // Calculate new tilemap size
        var min_x = 0;
        var min_y = 0;
        var new_map_w = map_w;
        var new_map_h = map_h;
		
		// Calculate how much to shift existing tiles right/down
		var shift_x = (offset_tiles_x < 0) ? -offset_tiles_x : 0;
		var shift_y = (offset_tiles_y < 0) ? -offset_tiles_y : 0;

		// Resize the tilemap to fit all tiles after offset
		tilemap_set_width(tilemap_id, map_w + abs(offset_tiles_x));
		tilemap_set_height(tilemap_id, map_h + abs(offset_tiles_y));

        // Clear and resize the tilemap
        tilemap_clear(tilemap_id, 0);

        // Rebuild tiles with offset
        for (var i = 0; i < array_length(temp_tiles); i++) {
            var tiledata = temp_tiles[i][0];
            var orig_x = temp_tiles[i][1];
            var orig_y = temp_tiles[i][2];
            var new_x = orig_x + offset_tiles_x + min_x;
            var new_y = orig_y + offset_tiles_y + min_y;

            if (new_x >= 0 && new_x < new_map_w && new_y >= 0 && new_y < new_map_h) {
                tilemap_set(tilemap_id, tiledata, new_x, new_y);
				
                if (debug_mode) {
                    show_debug_message(
                        "Tile moved on '" + string(layer_name) +
                        "': (" + string(orig_x) + "," + string(orig_y) + ") -> (" + string(new_x) + "," + string(new_y) + ")"
                    );
					
                }
            } else if (debug_mode) {
                show_debug_message(
                    "Tile skipped on '" + string(layer_name) +
                    "' due to out-of-bounds after offset: (" + string(orig_x) + "," + string(orig_y) + ") -> (" + string(new_x) + "," + string(new_y) + ")"
                );
            }
			
        }
    }
	
}
