// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handleNoteScore(distance, correctKey, fillMax){
	var result = "";
	var fill = fillMax / global.fishDifficulty;
	if(correctKey){
		/*
		ok = fillMax / 10;
		good = fillMax / 8;
		great = fillMax / 5;
		perfect = fillMax / 3;
		*/
		if(distance <= 20){
			result = "Perfect";
			return fill / 3;
		}
		else if(distance <= 40){
			result = "Great";
			return fill / 5;
		}
		else if(distance <= 65){
			result = "Good";
			return fill / 8;
		}
		else if(distance <= 80){
			result = "Bad";
			return fill / 10;
		}
		else{
			result = "Miss";
			return (fill / 5) * -1;
		}
	}
	else{
		result = "Miss";
		return (fill * global.fishDifficulty / 5) * -1;
	}
}