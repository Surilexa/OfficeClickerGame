// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function IncreaseScore(value, type){
	switch(type){
		case "Click":
			global.currentScore += value * global.clickMultiplier;
			break;
		case "NPC":
			global.currentScore += value * global.scoreMultiplier;
	}
}