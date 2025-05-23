/// @description Insert description here
// You can write your code in this editor
view_x = camera_get_view_x(cam);
view_y = camera_get_view_y(cam);

if(arrayPosition < obj_buttonController.firstButtonShown 
		|| arrayPosition > obj_buttonController.firstButtonShown + obj_buttonController.buttonRange){
	visible = false;
}
else{
	visible = global.buyMenuOpen;
}

if(global.currentScore >= price){
	img_index = 0;
}
else{
	img_index = 1;
}

if(isColliding){
	if(mouse_check_button_released(mb_left)){
		show_debug_message("buy");
		if(global.currentScore >= price){
			global.currentScore -= price;
			totalPurchased++;
			price = (totalPurchased+1) * price;
			var last = instance_create_layer(0,0, "Employees", ObjToPurchase);
		}
	}
}

rectx = x + view_x +140;
rectx2 = x + view_x + 370;
recty =  y + view_y+10;
recty2 = y + view_y +90

isColliding = rectx <= mouse_x && recty < mouse_y && rectx2 > mouse_x && recty2 > mouse_y;

