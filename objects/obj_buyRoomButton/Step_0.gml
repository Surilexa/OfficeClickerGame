/// @description Insert description here
// You can write your code in this editor
if(setUp){
	SetRoomActive(prefixToPurchase,false);
	setUp = false;
}

if(!isColliding){
	img_index = 0;
}
else{
	img_index = 1;
}

if(isColliding && visible){
	if(mouse_check_button_released(mb_left)){
		show_debug_message("buy");
		if(global.currentScore >= price){
			
			global.currentScore -= price;
			global.RoomsPurchased[RoomNumber] = true;
			SetRoomActive(prefixToPurchase,true);
			instance_destroy(self);
		}
	}
}
baseXScale = 4 * global.zoom_level;
baseYScale = 3 * global.zoom_level;
isColliding = x - (8 * baseXScale) < mouse_x && y - (8 * baseYScale) < mouse_y && x + (8 * baseXScale) > mouse_x && y + (8 * baseYScale) > mouse_y;
