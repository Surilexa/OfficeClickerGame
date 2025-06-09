/// @description Insert description here
// You can write your code in this editor


//overlapping logic
if(!setup){
	setup = true;
}
if(active){
	MovePreview(self,false);
	tilesOverlapping = CompareOccupiedTiles(global.OccupiedTiles, arrayPreview);
	show_debug_message(arrayPreview);
}

if(active && mouse_check_button_pressed(mb_left) && !tilesOverlapping){
	global.previewMode = true;
	var list = ds_list_create();
	collision_rectangle_list(mouse_x+sprite_get_bbox_left(sprite), mouse_y+sprite_get_bbox_top(sprite), mouse_x+ sprite_get_bbox_right(sprite), mouse_y+sprite_get_bbox_bottom(sprite), all, false, true, list, false);
	
	for (var i = 0; i < ds_list_size(list); i++) {
		var inst = list[| i];
		inst.alarm[9] = 1;
	}
	var temp = GetAllInstancesInLayer("Employees");
	for(var n = 0; n < array_length(temp); n++){
		temp[n].alarm[11] = 1;
	}
	
	ds_list_destroy(list);
	PurchaseRoom();
	active = false;
}

visible = active;