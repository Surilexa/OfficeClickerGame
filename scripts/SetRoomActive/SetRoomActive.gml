// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetRoomActive(layerPrefix, isActive){
	var layer_count = layer_get_all();

    for (var i = 0; i < layer_count; i++) {
        var layer_id = layer_get_id(i);
        var layer_name = layer_get_name(layer_id);

        if (string_copy(layer_name, 1, string_length(layerPrefix)) == layerPrefix) {
            if(isActive){
				instance_activate_layer(layer_name);
			}else{
				instance_deactivate_layer(layer_name);
			}
        }
    }
}