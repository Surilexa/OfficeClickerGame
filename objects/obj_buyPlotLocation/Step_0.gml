/// @description Insert description here
// You can write your code in this editor

if(isColliding && visible){
	if(mouse_check_button_released(mb_left)){
			global.selectedPlot = [plotXLocation, plotYLocation];
			PurchaseRoom();
			//instance_deactivate_object(self);
			//instance_destroy(self);
	}
}
//isColliding = position_meeting(mouse_x, mouse_y, self);
isColliding = x - (16 * baseXScale) < mouse_x && y - (16 * baseYScale) < mouse_y && x + (16 * baseXScale) > mouse_x && y + (16 * baseYScale) > mouse_y;
