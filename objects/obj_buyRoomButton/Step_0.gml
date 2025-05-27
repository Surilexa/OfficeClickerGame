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
			SetSurroundingPlots(plotXLocation,plotYLocation,true);
			BuildTheRoom(prefixToPurchase, TemplateXOffset, TemplateYOffset);
			UpdateNumberOfRoomsPurchased(prefixToPurchase);
			
			instance_destroy(self);
		}
	}
}
//isColliding = position_meeting(mouse_x, mouse_y, self);
isColliding = x - (16 * baseXScale) < mouse_x && y - (16 * baseYScale) < mouse_y && x + (16 * baseXScale) > mouse_x && y + (16 * baseYScale) > mouse_y;
