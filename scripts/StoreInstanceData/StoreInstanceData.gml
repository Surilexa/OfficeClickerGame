// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StoreInstanceData(layer_name){
	var data = ds_list_create();
    
    // Get the layer ID
    var layer_id = layer_get_id(layer_name);

    // Get all instances on the layer
    var inst_array = GetAllInstancesInLayer(layer_id);

    for (var i = 0; i < array_length(inst_array); i++) {
        var inst_id = inst_array[i];
        
        if (instance_exists(inst_id)) {
            var info = {
                obj: inst_id.object_index,
                Ox: inst_id.x,
                Oy: inst_id.y,
				scalex: inst_id.image_xscale,
				scaley: inst_id.image_yscale
            };
            ds_list_add(data, info);
			//show_debug_message(string(info));
        }
		
    }

    return data;
}