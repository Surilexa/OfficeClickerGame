// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MannuallyDrawLayers(myLayers){
	
	// Set alpha blending
	draw_set_alpha(0.4);

	// Loop through your tile layers
	for (var i = 0; i < array_length(myLayers); i++) {
	    var layer_id = myLayers[i];

	    // Make sure it's a tile layer
	    var tilemap_id = layer_tilemap_get_id(layer_id);

	    var lx = layer_get_x(layer_id);
		var ly = layer_get_y(layer_id);

        // Manually draw the tilemap at the correct layer position
        draw_tilemap(tilemap_id, lx, ly);
	}

	// Reset alpha and shader after drawing
	draw_set_alpha(1);
	//shader_reset();
}