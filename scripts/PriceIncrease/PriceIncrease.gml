// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PriceIncrease(purchasedObject, ownedAmount, baseCost){
	var temp = 1.15;
	return  baseCost * power(temp, ownedAmount);
}