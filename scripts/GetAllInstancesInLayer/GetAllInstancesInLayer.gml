// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetAllInstancesInLayer(layer_id){
		// Get all instances in this layer
        var inst_list = [];
		var inst_elements = layer_get_all_elements(layer_id);
		for(var e = 0; e < array_length(inst_elements); e++){
			array_push(inst_list, layer_instance_get_instance(inst_elements[e]));
		}
		return inst_list;
}