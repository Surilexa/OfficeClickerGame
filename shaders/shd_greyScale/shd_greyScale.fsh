//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 original_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
	
	float grey = 
		original_color.r * 0.299 +
		original_color.g * 0.587 +
		original_color.b * 0.114;
		
	vec4 grayscale_color = vec4(grey, grey, grey, original_color.a);
	
	gl_FragColor = grayscale_color;
}
