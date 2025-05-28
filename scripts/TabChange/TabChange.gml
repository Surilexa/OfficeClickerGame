// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TabChange(number){
	if(number > 3){
		number = 0;
	}
	global.BuyRoomTab = number;
	for(var i = 0; i < array_length(global.ListOfRoomButtons); i++){
		var array = global.ListOfRoomButtons[i];
		for(var n = 0; n < array_length(array); n++){
			if(i == number){
				array[n].isTabActive = true;
			}
			else{
				array[n].isTabActive = false;
			}
			//show_debug_message(string(array[n]) + "   Position: " + string(n));
		}
	}
	
	var arrayReference = global.ListOfRoomButtons[number];
	for(var i = obj_BuyMenuController.firstButtonShown; i < array_length(arrayReference); i++){
		arrayReference[i].y = (i - obj_BuyMenuController.firstButtonShown) * obj_BuyMenuController.buttonHeightOffset + obj_BuyMenuController.offsetY;
	}
}