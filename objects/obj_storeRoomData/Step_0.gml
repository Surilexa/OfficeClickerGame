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
				}
				break;
			case("Demon"):
				
			
		}
	}
}
room_goto(Room1);