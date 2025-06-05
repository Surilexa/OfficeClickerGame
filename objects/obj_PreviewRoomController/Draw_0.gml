/// @description Insert description here
// You can write your code in this editor

var myLayers = ds_map_keys_to_array(global.previewLayers)
// Set alpha blending
draw_set_alpha(0.4);
// Loop through your tile layers
for (var i = 0; i < array_length(myLayers); i++) {
	var layer_id = myLayers[i];
	layer_set_visible(layer_id, false);

	// Make sure it's a tile layer
	var tilemap_id = layer_tilemap_get_id(layer_id);
	show_debug_message(string(layer_id));
	show_debug_message(string(layer_get_visible(layer_id)));

	var lx = layer_get_x(layer_id);
	var ly = layer_get_y(layer_id);

    // Manually draw the tilemap at the correct layer position
    draw_tilemap(tilemap_id, lx, ly);
}
// Reset alpha and shader after drawing
draw_set_alpha(1);
//shader_reset();