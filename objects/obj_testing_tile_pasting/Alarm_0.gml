/// @description Insert description here
// You can write your code in this editor
show_debug_message("pasting tiles");
for(var i = 0; i < array_length(global.ReceptionTemplateInfo_Tiles); i++){
	
	PasteTemplateData(global.ReceptionTemplateInfo_Tiles[i], global.ReceptionTileSetIDs[i], 48,48, "Reception" + string(global.ReceptionRoomNum) + string(i),10,10, true);
}

var temp = FindAllLayersWithPrefix("Reception")
for(var i = 0; i < array_length(temp); i++){
	show_debug_message(temp[i]);
}