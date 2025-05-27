/// @description Insert description here
// You can write your code in this editor
if(!loadRef){
	loadRef = true;
	//grab all buttons in the scene
	for(var i = 0; i < instance_number(obj_buyButton); i++){
		array_push(arrayOfButtons, instance_find(obj_buyButton, i));
		arrayOfButtons[i].x = x + offsetX;
	}
}