//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Sample the original sprite texture
    vec4 tex = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Modify the color to be green, but use the original alpha value
    gl_FragColor = vec4(0.0, tex.g, 0.0, tex.a);  // Keep sprite alpha (tex.a) while changing the color
}