// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CanBuyPerson(objToBuy){
	
	switch(objToBuy){
		case(obj_roaming_AI_Lawyer):
			return global.CSRoomNum >= 1;
		case(obj_roaming_AI_Chef):
			return global.KitchenRoomNum >= 1;
		default:
			return true;
	}
}