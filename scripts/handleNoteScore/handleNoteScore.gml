// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handleNoteScore(distance, correctKey, fillMax){
	var text = "";
	var result = 0;
	var color = c_white;
	var fill = fillMax / global.fishDifficulty;
	if(correctKey){
		/*
		ok = fillMax / 10;
		good = fillMax / 8;
		great = fillMax / 5;
		perfect = fillMax / 3;
		*/
		if(distance <= 20){
			color = c_purple;
			text = "Perfect";
			result = fill / 3;
		}
		else if(distance <= 40){
			text = "Great";
			color = c_blue;
			result = fill / 5;
		}
		else if(distance <= 65){
			text = "Good";
			color = c_green;
			result = fill / 8;
		}
		else if(distance <= 80){
			text = "Bad";
			color = c_black;
			result = fill / 10;
		}
		else{
			text = "Miss";
			color = c_red;
			result = (fill * global.fishDifficulty / 5) * -1;
		}
	}
	else{
		text = "Miss";
		color = c_red;
		result = (fill * global.fishDifficulty / 5) * -1;
	}
	
	var inst = instance_create_layer(x,y, "Fish", obj_accuracy);
	inst.text = text;
	inst.c = color;
	return result;
}