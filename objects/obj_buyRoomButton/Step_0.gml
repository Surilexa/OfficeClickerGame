/// @description Insert description here
// You can write your code in this editor

if(!isColliding){
	img_index = 0;
}
else{
	img_index = 1;
}

if(isColliding && visible){
	if(mouse_check_button_released(mb_left)){
		if(global.currentScore >= price){
			global.currentScore -= price;
			global.RoomsPurchased[RoomNumber] = true;
			
			obj_RoomButtonController.nextOffsetx = NextButtonXOffset;
			obj_RoomButtonController.nextOffsety = NextButtonYOffset;
			obj_RoomButtonController.alarm[0] = 1;
			BuildTheRoom(prefixToPurchase, TemplateXOffset, TemplateYOffset);
			UpdateNumberOfRoomsPurchased(prefixToPurchase);
			instance_destroy(self);
		}
	}
}
baseXScale = 4 * global.zoom_level;
baseYScale = 3 * global.zoom_level;
isColliding = x - (8 * baseXScale) < mouse_x && y - (8 * baseYScale) < mouse_y && x + (8 * baseXScale) > mouse_x && y + (8 * baseYScale) > mouse_y;

textXScale = ((30 + (2*priceLength)) + global.zoom_level) * global.zoom_level;