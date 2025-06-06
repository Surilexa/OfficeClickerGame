// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PurchaseRoom(){
	global.buildMode = true;
	if(global.selectedRoom != "" && !global.previewMode){
		//run preview code here
		//setup the preview layers
		global.buyMenuRoomOpen = false;
		global.previewMode = true;
		BuildTheRoom(global.selectedRoom, 0 , 0, true);
	}
	else if(global.previewMode){
		//open menu to choose room
		global.previewMode = false;
		global.buyMenuRoomOpen = false;
		BuildTheRoom(global.selectedRoom, floor(mouse_x/48), floor(mouse_y/48), false);
	}
}