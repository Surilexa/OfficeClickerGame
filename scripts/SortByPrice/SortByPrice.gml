// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SortByPrice(arrayOfButtons){
	var n = array_length(arrayOfButtons);
	if(n == 1){
		return arrayOfButtons;
	}
	for (var i = 0; i < n - 1; i++) {
	    for (var j = 0; j < n - i - 1; j++) {
	        if (arrayOfButtons[j].price > arrayOfButtons[j + 1].price) {
	            // Swap instances
	            var temp = arrayOfButtons[j];
	            arrayOfButtons[j] = arrayOfButtons[j + 1];
	            arrayOfButtons[j + 1] = temp;
	        }
	    }
	}
	return arrayOfButtons;
}