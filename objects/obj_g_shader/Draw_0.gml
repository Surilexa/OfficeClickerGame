/// @description Insert description here
// You can write your code in this editor


if(use_greyScale){
	
	var lay_id2 = layer_get_id("GreyScaleObjects");
	layer_shader(lay_id2, shd_greyScale);
	
	var lay_id = layer_get_id("SpriteCubicle");
	layer_shader(lay_id, shd_greyScale);
}
else{
	var lay_id = layer_get_id("SpriteCubicle");
	layer_shader(lay_id, shd_default);
	
	var lay_id2 = layer_get_id("GreyScaleObjects");
	layer_shader(lay_id2, shd_default);
}