// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CopyAndPasteMap(arrayOfLayers, arrayOfTilesetsUsed, arrayOfNewLayers, offsetX, offsetY, startingDepth){
	global.tile_data_map = ds_map_create();
	var tempDepth = startingDepth;
	for (var i = 0; i < array_length(arrayOfLayers); i++) {
		var layer_name = arrayOfLayers[i];
		var tileset = arrayOfTilesetsUsed[i];

		var layer_id = layer_get_id(layer_name);
		var tilemap_id = layer_tilemap_get_id(layer_id);

		var tile_w = tilemap_get_tile_width(tilemap_id);
		var tile_h = tilemap_get_tile_height(tilemap_id);
		var cols = tilemap_get_width(tilemap_id);
		var rows = tilemap_get_height(tilemap_id);

		var tile_data_list = ds_list_create();

		for (var tx = 0; tx < cols; tx++) {
			for (var ty = 0; ty < rows; ty++) {
			    var tile_index = tilemap_get(tilemap_id, tx, ty);
			    if (tile_index != 0) {
			        var tile_info = ds_map_create();
			        ds_map_add(tile_info, "x", tx);
			        ds_map_add(tile_info, "y", ty);
			        ds_map_add(tile_info, "index", tile_index);
			        ds_list_add(tile_data_list, tile_info);
			    }
			}
		}

		var layer_data = ds_map_create();
		ds_map_add(layer_data, "tileset", tileset);
		ds_map_add(layer_data, "tiles", tile_data_list);

		ds_map_add(global.tile_data_map, layer_name, layer_data);
	}
	
	var new_layer_names = arrayOfNewLayers;

	for (var i = 0; i < array_length(arrayOfLayers); i++) {
	    var old_layer = arrayOfLayers[i];
	    var new_layer = new_layer_names[i];
		
		show_debug_message(string(new_layer));

	    var layer_data = global.tile_data_map[? old_layer];
	    var tileset = layer_data[? "tileset"];
	    var tile_data_list = layer_data[? "tiles"];

		layer_create(tempDepth, new_layer);
		tempDepth += 1000
	    var tilemap_id = layer_tilemap_create(new_layer, offsetX, offsetY, tileset, 48, 48);

	    for (var j = 0; j < ds_list_size(tile_data_list); j++) {
	        var tile_info = tile_data_list[| j];
	        tilemap_set(tilemap_id, tile_info[? "x"], tile_info[? "y"], tile_info[? "index"]);
	    }
	}
}

