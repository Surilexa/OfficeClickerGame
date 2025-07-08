var currentPull = global.currentGachaArray[i];

if(array_length(pulls) ==1){
	show_debug_message("spawn frog");
	var item = instance_create_layer(display_get_gui_width()/2,display_get_gui_height()/2, "TempObjects", obj_pullVFX);
	item.rarity = currentPull[? "rarity"];
}
else if(array_length(pulls) <=5){
	var item = instance_create_layer(display_get_gui_width()/array_length(pulls) * (i+1),
		display_get_gui_height()/2, "TempObjects", obj_pullVFX);
	item.rarity = currentPull[? "rarity"];
}
else{
	if(i < 5){
		var item = instance_create_layer(display_get_gui_width()/5 * (i+1) - 175,
		display_get_gui_height()/3, "TempObjects", obj_pullVFX);
		item.rarity = currentPull[? "rarity"];
	}
	else{
		var item = instance_create_layer(display_get_gui_width()/5 * (i-5+1) - 175,
		display_get_gui_height()/3*2, "TempObjects", obj_pullVFX);
		item.rarity = currentPull[? "rarity"];
	}
}
if(i < array_length(pulls)-1){
	i++;
	alarm[0] = 40;
}

show_debug_message(string(array_length(pulls)));