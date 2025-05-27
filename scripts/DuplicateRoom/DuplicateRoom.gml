// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DuplicateRoom(layers_array, offset_tiles_x, offset_tiles_y, debug_mode, prefix) {
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

        // Store tile data
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

        // Get tileset and tile size
        var tileset_id = tilemap_get_tileset(tilemap_id);
        var tile_w = tilemap_get_tile_width(tilemap_id);
        var tile_h = tilemap_get_tile_height(tilemap_id);

        // Create new layer name
        var new_layer_name = prefix + "_offset" + string(l);
        if (layer_exists(new_layer_name)) {
            if (debug_mode) show_debug_message("Layer '" + new_layer_name + "' already exists. Deleting and recreating.");
            layer_destroy(layer_get_id(new_layer_name));
        }

        // Create new layer and tilemap
        var new_layer_id = layer_create(0, new_layer_name);
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
                        "Tile moved from '" + string(layer_name) + 
                        "' to '" + new_layer_name + 
                        "': (" + string(orig_x) + "," + string(orig_y) + 
                        ") -> (" + string(new_x) + "," + string(new_y) + ")"
                    );
                }
            } else if (debug_mode) {
                show_debug_message(
                    "Tile skipped on '" + string(layer_name) + 
                    "' due to out-of-bounds after offset: (" + string(orig_x) + "," + string(orig_y) + 
                    ") -> (" + string(new_x) + "," + string(new_y) + ")"
                );
            }
        }
    }
}
