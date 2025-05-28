// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BuildTheRoom(prefixToPurchase, TemplateXOffset, TemplateYOffset){
	show_debug_message(string(prefixToPurchase));
	switch(prefixToPurchase){
		
		case("Reception"):
			for(var i = 0; i < array_length(global.ReceptionTemplateInfo_Tiles); i++){
				PasteTemplateData(global.ReceptionTemplateInfo_Tiles[i], global.ReceptionTileSetIDs[i], 48,48, 
					prefixToPurchase + string(global.ReceptionRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
			}
			PasteInstanceData(global.ReceptionTemplateInfo_Instances, prefixToPurchase + string(global.ReceptionRoomNum) + "_objs",TemplateXOffset * 48,TemplateYOffset * 48);
			global.ReceptionRoomNum++;
			break;
		case("Demon"):
			//show_debug_message("printing demon");
			for(var i = 0; i < array_length(global.DemonTemplateInfo_Tiles); i++){
				PasteTemplateData(global.DemonTemplateInfo_Tiles[i], global.DemonTileSetIDs[i], 48,48, 
					prefixToPurchase + string(global.DemonRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
				
			}
			PasteInstanceData(global.DemonTemplateInfo_Instances, prefixToPurchase + string(global.DemonRoomNum) + "_objs",TemplateXOffset * 48,TemplateYOffset * 48);
			global.DemonRoomNum++;
			break;
		case("Gym"):
			for(var i = 0; i < array_length(global.GymTemplateInfo_Tiles); i++){
				PasteTemplateData(global.GymTemplateInfo_Tiles[i], global.GymTileSetIDs[i], 48,48, 
					prefixToPurchase + string(global.GymRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
			}
			//global.
			PasteInstanceData(global.GymTemplateInfo_Instances, prefixToPurchase + string(global.GymRoomNum) + "_objs",TemplateXOffset * 48,TemplateYOffset * 48);
			global.GymnRoomNum++;
			break;
		}
	
	
}