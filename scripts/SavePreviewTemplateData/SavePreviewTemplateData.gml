
function SavePreviewTemplateData(debug_mode){
	var keys = ds_map_keys_to_array(global.previewLayers);
	var key_count = array_length(keys);

	for (var i = 0; i < key_count; i++) {
	    var layer_name = keys[i];
	    var layer_id = ds_map_find_value(global.previewLayers, layer_name);
		
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
       // ds_map_add(global.SavedPreviewData, layer_id, StoreTemplateData(layer_name));
		//show_debug_message(string(ds_map_size(global.SavedPreviewData)))
    }
}
