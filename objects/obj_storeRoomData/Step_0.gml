/// @description Insert description here
// You can write your code in this editor
if(array_length(global.ReceptionTemplateInfo_Tiles) == 0){
	for (var i = 0; i < array_length(prefixTemplateArray); i++){
		switch(prefixTemplateArray[i]){
			case("Reception"):
				var layers = FindAllLayersWithPrefix(prefixTemplateArray[i]);
				for(var n = 0; n < array_length(layers); n++){
					array_push(global.ReceptionTemplateInfo_Tiles, StoreTemplateData(layers[n]));
					
					var layer_id = layer_get_id(layers[n]);
					var tilemap_id = layer_tilemap_get_id(layer_id);
					var tileset_id = tilemap_get_tileset(tilemap_id);
					array_push(global.ReceptionTileSetIDs, tileset_id);
					
					var instTemp = StoreInstanceData(layers[n]);
					if(ds_list_size(instTemp) != 0){
						global.ReceptionTemplateInfo_Instances = StoreInstanceData(layers[n]);
						//show_debug_message(string(layers[n]) + " was stored in info instances");
					}
						
				}
				for(var j = 0; j < array_length(global.ReceptionTemplateInfo_Tiles); j++){
					var tempArray = global.ReceptionTemplateInfo_Tiles[j];
					for(var k = 0; k < array_length(tempArray); k++){
						var w = tempArray[k][1];
						var h = tempArray[k][2];
						global.ReceptionCollisionMask[w,h] = true;
					}
				}
				break;
			case("CS"):
				layers = FindAllLayersWithPrefix(prefixTemplateArray[i]);
				for(var n = 0; n < array_length(layers); n++){
					array_push(global.CSTemplateInfo_Tiles, StoreTemplateData(layers[n]));
					
					var layer_id = layer_get_id(layers[n]);
					var tilemap_id = layer_tilemap_get_id(layer_id);
					var tileset_id = tilemap_get_tileset(tilemap_id);
					array_push(global.CSTileSetIDs, tileset_id);
					
					var instTemp = StoreInstanceData(layers[n]);
					if(ds_list_size(instTemp) != 0){
						global.CSTemplateInfo_Instances = StoreInstanceData(layers[n]);
						//show_debug_message(string(layers[n]) + " was stored in info instances");
					}
				}
				for(var j = 0; j < array_length(global.CSTemplateInfo_Tiles); j++){
					var tempArray = global.CSTemplateInfo_Tiles[j];
					for(var k = 0; k < array_length(tempArray); k++){
						var w = tempArray[k][1];
						var h = tempArray[k][2];
						global.CSCollisionMask[w,h] = true;
					}
				}
				break;
			case("Demon"):
				layers = FindAllLayersWithPrefix(prefixTemplateArray[i]);
				for(var n = 0; n < array_length(layers); n++){
					array_push(global.DemonTemplateInfo_Tiles, StoreTemplateData(layers[n]));
					
					var layer_id = layer_get_id(layers[n]);
					var tilemap_id = layer_tilemap_get_id(layer_id);
					var tileset_id = tilemap_get_tileset(tilemap_id);
					array_push(global.DemonTileSetIDs, tileset_id);
					
					var instTemp = StoreInstanceData(layers[n]);
					if(ds_list_size(instTemp) != 0){
						global.DemonTemplateInfo_Instances = StoreInstanceData(layers[n]);
						//show_debug_message(string(layers[n]) + " was stored in info instances");
					}
				}
				for(var j = 0; j < array_length(global.DemonTemplateInfo_Tiles); j++){
					var tempArray = global.DemonTemplateInfo_Tiles[j];
					for(var k = 0; k < array_length(tempArray); k++){
						var w = tempArray[k][1];
						var h = tempArray[k][2];
						global.DemonCollisionMask[w,h] = true;
					}
				}
				break;
			case("Kitchen"):
				layers = FindAllLayersWithPrefix(prefixTemplateArray[i]);
				for(var n = 0; n < array_length(layers); n++){
					array_push(global.KitchenTemplateInfo_Tiles, StoreTemplateData(layers[n]));
					
					var layer_id = layer_get_id(layers[n]);
					var tilemap_id = layer_tilemap_get_id(layer_id);
					var tileset_id = tilemap_get_tileset(tilemap_id);
					array_push(global.KitchenTileSetIDs, tileset_id);
					
					var instTemp = StoreInstanceData(layers[n]);
					if(ds_list_size(instTemp) != 0){
						global.KitchenTemplateInfo_Instances = StoreInstanceData(layers[n]);
						//show_debug_message(string(layers[n]) + " was stored in info instances");
					}
				}
				for(var j = 0; j < array_length(global.KitchenTemplateInfo_Tiles); j++){
					var tempArray = global.KitchenTemplateInfo_Tiles[j];
					for(var k = 0; k < array_length(tempArray); k++){
						var w = tempArray[k][1];
						var h = tempArray[k][2];
						global.KitchenCollisionMask[w,h] = true;
					}
				}
				break;
			case("Gym"):
				layers = FindAllLayersWithPrefix(prefixTemplateArray[i]);
				for(var n = 0; n < array_length(layers); n++){
					array_push(global.GymTemplateInfo_Tiles, StoreTemplateData(layers[n]));
					
					var layer_id = layer_get_id(layers[n]);
					var tilemap_id = layer_tilemap_get_id(layer_id);
					var tileset_id = tilemap_get_tileset(tilemap_id);
					array_push(global.GymTileSetIDs, tileset_id);
					
					var instTemp = StoreInstanceData(layers[n]);
					if(ds_list_size(instTemp) != 0){
						global.GymTemplateInfo_Instances = StoreInstanceData(layers[n]);
						//show_debug_message(string(layers[n]) + " was stored in info instances");
					}
				}
				for(var j = 0; j < array_length(global.GymTemplateInfo_Tiles); j++){
					var tempArray = global.GymTemplateInfo_Tiles[j];
					for(var k = 0; k < array_length(tempArray); k++){
						var w = tempArray[k][1];
						var h = tempArray[k][2];
						global.GymCollisionMask[w,h] = true;
					}
				}
				break;
		}
	}
}
room_goto(Room1);