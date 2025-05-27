// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FindAllLayersWithPrefix(layerPrefix){
	var layer_count = layer_get_all();
	var returnArray = [];
    for (var i = 0; i < array_length(layer_count); i++) {
        var layer_id = layer_count[i];
        var layer_name = layer_get_name(layer_id);

        if (string_copy(layer_name, 1, string_length(layerPrefix)) == layerPrefix) {
			array_push(returnArray, layer_name);
		}
	}
	return returnArray;
}