// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OffestCalc(directionS, distance){
	switch(directionS){
		case("Right"):
			return [distance * 15, 0];
		case("Left"):
			return [distance * -15, 0];
		case("Up"):
			return [0, distance * -15];
		case("Down"):
			return [0, distance * 15];
	}
}