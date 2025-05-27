// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DuplicateInstance(layers_array, offset_x, offset_y, NewDepth, debug_mode) {
    var layer_count = array_length(layers_array);

    for (var l = 0; l < layer_count; l++) {
        var layer_name = layers_array[l];
        var layer_id = layer_get_id(layer_name);
        if (layer_id == -1) {
            if (debug_mode) show_debug_message("Layer '" + string(layer_name) + "' not found. Skipping.");
            continue;
        }

        if (debug_mode) show_debug_message("Processing instance layer: " + string(layer_name));

        var instances = GetAllInstancesInLayer(layer_id);
		
		

        if (debug_mode) show_debug_message("Found " + string(array_length(inst_list)) + " instances on " + string(layer_name));
        // New layer name
        var new_layer_name = layer_name + "_offset";

        // Delete old offset layer if it already exists
        if (layer_exists(new_layer_name)) {
            if (debug_mode) show_debug_message("Layer '" + new_layer_name + "' already exists. Deleting.");
            layer_destroy(layer_get_id(new_layer_name));
        }

        // Create the new instance layer (at same depth)
        var new_layer_id = layer_create(NewDepth, new_layer_name);

        // Duplicate instances to new layer with offset
        for (var i = 0; i < array_length(inst_list); i++) {
            var inst = inst_list[i];

            var new_x = inst.x + offset_x;
            var new_y = inst.y + offset_y;

            var new_inst = instance_create_layer(new_x, new_y, new_layer_name, inst.object_index);

            // Copy variables from original to new instance
            var var_count = variable_instance_get_names(inst);
            for (var v = 0; v < array_length(var_count); v++) {
                var var_name = var_count[v];
                variable_instance_set(new_inst, var_name, variable_instance_get(inst, var_name));
            }

            if (debug_mode) {
                show_debug_message(
                    "Instance of " + object_get_name(inst.object_index) + 
                    " moved from (" + string(inst.x) + "," + string(inst.y) + 
                    ") to (" + string(new_x) + "," + string(new_y) + ") on layer '" + new_layer_name + "'"
                );
            }
        }
    }
}
