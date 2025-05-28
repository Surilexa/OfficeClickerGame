/// @description Insert description here
// You can write your code in this editor
if(!loadRef){
	loadRef = true;
	//grab all buttons in the scene
	
	arrayOfButtonsAmenities = GetAllInstancesInLayer("AmenityButtons");
	arrayOfButtonsDemons = GetAllInstancesInLayer("DemonButtons");
	arrayOfButtonsDefense = GetAllInstancesInLayer("DefenseButtons");
	arrayOfButtonsProduction = GetAllInstancesInLayer("ProductionButtons");
	
	alarm[0] =1; //sort by price and give to global var
}