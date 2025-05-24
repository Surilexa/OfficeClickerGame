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

if(isColliding && visible){
	if(mouse_check_button_released(mb_left)){
		show_debug_message("buy");
		if(global.currentScore >= price){
			
			global.currentScore -= price;
			totalPurchased++;
			price = PriceIncrease(ObjToPurchase, totalPurchased, basePrice);
			BuyPerson(ObjToPurchase,1);
			
			
			if(LimitOnScreen >= totalPurchased){
				var last = instance_create_layer(spawnRef.x,spawnRef.y, "Employees", ObjToPurchase);
				last.sprite_index = Sprite;
			}
		}
	}
}

room_x = camera_get_view_x(view_camera[0]) + (x / display_get_gui_width()) * camera_get_view_width(view_camera[0]);
room_y = camera_get_view_y(view_camera[0]) + (y / display_get_gui_height()) * camera_get_view_height(view_camera[0]);


rectx = room_x + (140 * global.zoom_level);
rectx2 = room_x +(370 * global.zoom_level);
recty =  room_y +(10 * global.zoom_level);
recty2 = room_y +(90 * global.zoom_level);

isColliding = rectx <= mouse_x && recty < mouse_y && rectx2 > mouse_x && recty2 > mouse_y;