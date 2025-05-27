// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BuyPerson(ref, amount){
	switch(ref){
		case(obj_roaming_AI_General):
			global.blueCollarWorkers += amount;
			break;
		case(obj_roaming_AI_Lawyer):
			global.Lawyers += amount;
			break;
		case(obj_roaming_AI_Chef):
			global.Chef += amount;
			break;
		case(obj_roaming_AI_Dog):
			global.Dog += amount;
			break;
	}
}