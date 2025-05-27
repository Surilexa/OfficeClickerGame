// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UpdateNumberOfRoomsPurchased(room_type){
	switch(room_type){
		case("Reception"):
			global.ReceptionRoomNum++;
			break;
		case("CS"):
			global.ComputerRoomNum++;
			break;
		case("Kitchen"):
			global.KitchenRoomNum++;
			break;
		case("Cat"):
			global.CatRoomNum++;
			break;
		case("Demon"):
			global.DemonRoomNum++;
			break;
		default:
			break;
	}
}