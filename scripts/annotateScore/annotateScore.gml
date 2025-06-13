// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function annotateScore(num){
	var temp = num;
	var count = 0;
	while(temp >= 10000){
		count++;
		temp /= 1000;
		//show_debug_message(string(count) + "   " + string(temp));
	}
	switch(count){
		case(0):
			return string(temp);
		case(1):
			return string(temp) + "K";
		case(2):
			return string(temp) + "M";
		case(3):
			return string(temp) + "B";
		case(4):
			return string(temp) + "T";
		case(5):
			return string(temp) + "Qa";
		case(6):
			return string(temp) + "Sx";
		case(7):
			return string(temp) + "Sp";
		case(8):
			return string(temp) + "Oc";
		case(9):
			return string(temp) + "No";
		case(10):
			return string(temp) + "Dc";
		default:
			return "Error";
	}
}