var currentPull = global.currentGachaArray[i];
show_debug_message(string(currentPull[? "Name"]));
var default_sprite = object_get_sprite(currentPull[? "Name"]);

if(array_length(pulls) ==1){
	show_debug_message("spawn frog");
	var item = instance_create_layer(display_get_gui_width()/2,display_get_gui_height()/2, "TempObjects", obj_pullVFX);
	item.rarity = currentPull[? "rarity"];
	item.sprite = default_sprite;
}
else if(array_length(pulls) <=5){
	var item = instance_create_layer(display_get_gui_width()/array_length(pulls) * (i+1),
		display_get_gui_height()/2, "TempObjects", obj_pullVFX);
	item.rarity = currentPull[? "rarity"];
	item.sprite = default_sprite;
}
else{
	if(i < 5){
		var item = instance_create_layer(display_get_gui_width()/5 * (i+1) - 175,
		display_get_gui_height()/3, "TempObjects", obj_pullVFX);
		item.rarity = currentPull[? "rarity"];
		item.sprite = default_sprite;
	}
	else{
		var item = instance_create_layer(display_get_gui_width()/5 * (i-5+1) - 175,
		display_get_gui_height()/3*2, "TempObjects", obj_pullVFX);
		item.rarity = currentPull[? "rarity"];
		item.sprite = default_sprite;
	}
}
if(i < array_length(pulls)-1){
	i++;
	alarm[0] = 40;
}
else{
	alarm[1] = 60 * 3;
}
