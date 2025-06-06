// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BuildTheRoom(prefixToPurchase, TemplateXOffset, TemplateYOffset, preview){
	show_debug_message(string(prefixToPurchase));
	switch(prefixToPurchase){
		case("Reception"):
			if(!preview){
				for(var i = 0; i < array_length(global.ReceptionTemplateInfo_Tiles); i++){
					PasteTemplateData(global.ReceptionTemplateInfo_Tiles[i], global.ReceptionTileSetIDs[i], 48,48, 
					prefixToPurchase + string(global.ReceptionRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
				}
				PasteInstanceData(global.ReceptionTemplateInfo_Instances, prefixToPurchase + string(global.ReceptionRoomNum) + "_objs",TemplateXOffset * 48,TemplateYOffset * 48);
				global.ReceptionRoomNum++;
			}
			else{
				obj_preview.arrayPreview = global.ReceptionCollisionMask;
				ShowPreview(spr_reception_preview);
			}
			
			break;
		case("CS"):
			if(!preview){
				for(var i = 0; i < array_length(global.CSTemplateInfo_Tiles); i++){
					PasteTemplateData(global.CSTemplateInfo_Tiles[i], global.CSTileSetIDs[i], 48,48, 
						prefixToPurchase + string(global.CSRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
				}
				PasteInstanceData(global.CSTemplateInfo_Instances, prefixToPurchase + string(global.CSRoomNum) + "_objs",TemplateXOffset * 48,TemplateYOffset * 48);
				global.CSRoomNum++;
			}
			else{
				obj_preview.arrayPreview = global.CSCollisionMask;
				ShowPreview(spr_cs_preview);
			}
			break;
		case("Demon"):
			if(!preview){
				for(var i = 0; i < array_length(global.DemonTemplateInfo_Tiles); i++){
					PasteTemplateData(global.DemonTemplateInfo_Tiles[i], global.DemonTileSetIDs[i], 48,48, 
						prefixToPurchase + string(global.DemonRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
				
				}
				PasteInstanceData(global.DemonTemplateInfo_Instances, prefixToPurchase + string(global.DemonRoomNum) + "_objs",TemplateXOffset * 48,TemplateYOffset * 48);
				global.DemonRoomNum++;
			}
			else{
				obj_preview.arrayPreview = global.DemonCollisionMask;
				ShowPreview(spr_reception_preview);
			}
			break;
		case("Gym"):
			if(!preview){
				for(var i = 0; i < array_length(global.GymTemplateInfo_Tiles); i++){
					PasteTemplateData(global.GymTemplateInfo_Tiles[i], global.GymTileSetIDs[i], 48,48, 
						prefixToPurchase + string(global.GymRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
				}
				//global.
				PasteInstanceData(global.GymTemplateInfo_Instances, prefixToPurchase + string(global.GymRoomNum) + "_objs",TemplateXOffset * 48,TemplateYOffset * 48);
				global.GymRoomNum++;
			}
			else{
				//show_debug_message(global.GymCollisionMask);
				obj_preview.arrayPreview = global.GymCollisionMask;
				ShowPreview(spr_gym_preview);
			}
			break;
		case("Kitchen"):
			if(!preview){
				for(var i = 0; i < array_length(global.KitchenTemplateInfo_Tiles); i++){
					PasteTemplateData(global.KitchenTemplateInfo_Tiles[i], global.KitchenTileSetIDs[i], 48,48, 
						prefixToPurchase + string(global.KitchenRoomNum) + string(i),TemplateXOffset,TemplateYOffset, false);
				
				}
				PasteInstanceData(global.KitchenTemplateInfo_Instances, prefixToPurchase + string(global.KitchenRoomNum) + "_objs",TemplateXOffset * 48,TemplateYOffset * 48);
				global.KitchenRoomNum++;
			}
			else{
				obj_preview.arrayPreview = global.KitchenCollisionMask;
				ShowPreview(spr_reception_preview);
			}
			break;
	}

}