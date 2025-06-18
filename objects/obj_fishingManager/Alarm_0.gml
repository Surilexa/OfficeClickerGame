/// @description Insert description here
// You can write your code in this editor

//fishing pause
randomize();
var num = 0;
if(combo <= 4){
	global.noteSpeed = 4;
	num = irandom_range(1,4);
}
else if(combo <= 10){
	global.noteSpeed = 5;
	num = irandom_range(1,5);
}
else if(combo <= 15){
	global.noteSpeed = 6;
	num = irandom_range(1,6);
}
else if(combo <= 20){
	global.noteSpeed = 7;
	num = irandom_range(1,8);
}
else{
	global.noteSpeed = 8;
	num = irandom_range(1,8);
}

currentFish = instance_create_layer(0,0,"Fish", obj_fishHandler);

currentFish.Sprite = global.availableFish[? num ][? "Sprite"];
global.fishDifficulty = global.availableFish[? num ][? "Difficulty"];
currentFish.price = global.availableFish[? num ][? "Price"];
alarm[1] = 1;