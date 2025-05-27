// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BuildTheRoom(prefixToPurchase, TemplateXOffset, TemplateYOffset){
	switch(prefixToPurchase){
		case("Reception"):
			for(var i = 0; i < array_length(global.ReceptionTemplateInfo_Tiles); i++){
				PasteTemplateData(global.ReceptionTemplateInfo_Tiles[i], global.ReceptionTileSetIDs[i], 48,48, 
					prefixToPurchase + string(global.ReceptionRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
			}
			break;
		case("Demon"):
			for(var i = 0; i < array_length(global.DemonTemplateInfo_Tiles); i++){
				PasteTemplateData(global.DemonTemplateInfo_Tiles[i], global.DemonTileSetIDs[i], 48,48, 
					prefixToPurchase + string(global.DemonRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
			}
			break;
		case("Gym"):
			for(var i = 0; i < array_length(global.GymTemplateInfo_Tiles); i++){
				PasteTemplateData(global.GymTemplateInfo_Tiles[i], global.GymTileSetIDs[i], 48,48, 
					prefixToPurchase + string(global.DymRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
			}	
			break;
		}
	
	
}