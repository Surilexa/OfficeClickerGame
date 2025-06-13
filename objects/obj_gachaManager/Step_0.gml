/// @description Insert description here
// You can write your code in this editor
if(!Setup){
	Setup = true;
	for(var i = 0; i < totalGachaAmount; i++){
	 	array_push(global.availableGacha, asset_get_index("g_" + string(i)));
	}
}


