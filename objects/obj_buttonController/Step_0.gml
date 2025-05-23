/// @description Insert description here
// You can write your code in this editor
if(!loadRef){
	loadRef = true;
	//grab all buttons in the scene
	for(var i = 0; i < instance_number(obj_buyButton); i++){
		array_push(arrayOfButtons, instance_find(obj_buyButton, i));
		arrayOfButtons[i].x = x + 550;
	}
	
	//sort by price
	for (var i = 0; i < array_length(arrayOfButtons) - 1; i++) {
	    for (var j = 0; j <  array_length(arrayOfButtons) - i - 1; j++) {
	        if (arrayOfButtons[j].price > arrayOfButtons[i].price) {
	            // Swap instances
	            var temp = arrayOfButtons[j];
	            arrayOfButtons[j] = arrayOfButtons[j + 1];
	            arrayOfButtons[j + 1] = temp;
	        }
	    }
	}
	for(var i = 0; i < array_length(arrayOfButtons); i++){
		arrayOfButtons[i].arrayPosition = i;
	}
}


if(visible){
	if(mouse_wheel_down()){
		firstButtonShown ++;
		firstButtonShown = clamp(firstButtonShown, 0, array_length(arrayOfButtons)-1);
		show_debug_message(string(firstButtonShown));
	}
	if(mouse_wheel_up()){
		firstButtonShown--;
		firstButtonShown = clamp(firstButtonShown, 0, array_length(arrayOfButtons)-1);
		show_debug_message(string(firstButtonShown));
	}
	for(var i = firstButtonShown; i < array_length(arrayOfButtons); i++){
		arrayOfButtons[i].y = (i - firstButtonShown) * buttonHeightOffset + 60;
		//show_debug_message(array_length(arrayOfButtons));
	}
}
visible = global.buyMenuOpen;

if(keyboard_check_pressed(vk_space)){
	global.buyMenuOpen = !global.buyMenuOpen;
}