/// @description Insert description here
// You can write your code in this editor
//sort by price
var n = array_length(arrayOfButtons);

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