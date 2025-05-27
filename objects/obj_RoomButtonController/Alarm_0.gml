/// @description Insert description here
// You can write your code in this editor
var layer_count = layer_get_all();
var tempArray = [];
for (var i = 0; i < array_length(layer_count); i++) {
	var layer_id = layer_count[i];
	var layer_name = layer_get_name(layer_id);

	if (string_copy(layer_name, 1, string_length("UB_1")) == "UB_1") {
		array_push(tempArray, layer_name);
		show_debug_message(layer_name);
	}
}
MoveUnbuiltRoom(tempArray, nextOffsetx, nextOffsety, false);