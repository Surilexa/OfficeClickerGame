// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScrollMenu(arrayReference, ScrollDirection, firstButton, range, buttonHeightSpacing, TopMargin){
	var firstButtonShown = firstButton;
	if(ScrollDirection == "Up" && global.canScrollMenu){
		firstButtonShown--;
		firstButtonShown = clamp(firstButtonShown, 0, array_length(arrayReference)-1);
		show_debug_message(string(firstButtonShown));
	}
	else{
		if(global.canScrollMenu){
			firstButtonShown ++;
			if(range > array_length(arrayReference)){
				firstButtonShown = clamp(firstButtonShown, 0, array_length(arrayReference)-1);
			}
			else{
				firstButtonShown = clamp(firstButtonShown, 0, array_length(arrayReference)-range div 2);
			}
		}
	}
	return firstButtonShown;
}