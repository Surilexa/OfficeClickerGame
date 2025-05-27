// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetRoomActive(layerPrefix, isActive, room_type){
	var layer_count = layer_get_all();

    for (var i = 0; i < array_length(layer_count); i++) {
        var layer_id = layer_count[i];
        var layer_name = layer_get_name(layer_id);

        if (string_copy(layer_name, 1, string_length(layerPrefix)) == layerPrefix) {
			show_debug_message(layer_name);
			layer_set_visible(layer_id, isActive);
            if(isActive){
				
				instance_activate_layer(layer_name);
				switch(room_type){
					case("Reception"):
						global.ReceptionRoomNum++;
						break;
					case("CS"):
						global.ComputerRoomNum++;
						break;
					case("Kitchen"):
						global.KitchenRoomNum++;
						break;
					case("Cat"):
						global.CatRoomNum++;
						break;
					case("Demon"):
						global.DemonRoomNum++;
						break;
					default:
						break;
				}
			}else{
				instance_deactivate_layer(layer_name);
			}
        }
    }
	
}