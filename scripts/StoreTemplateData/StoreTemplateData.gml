// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StoreTemplateData(layer_name){
	show_debug_message("Storing Tile data for: " + layer_name);
	var tilemap_id = layer_tilemap_get_id(layer_get_id(layer_name));
	var map_w = tilemap_get_width(tilemap_id);
	var map_h = tilemap_get_height(tilemap_id);

	// Store tile data
	var temp_tiles = [];
	for (var a = 0; a < map_h; a++) {
	    for (var b = 0; b < map_w; b++) {
	        var tiledata = tilemap_get(tilemap_id, b, a);
	        if (tiledata != 0) {
	            array_push(temp_tiles, [tiledata, b, a]);
				show_debug_message(string(tiledata));
	        }
	    }
	}
	return temp_tiles;
}