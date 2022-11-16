#extension GL_OES_standard_derivatives : enable

//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 texSize;

void main()
{
	vec4 starting_color = texture2D(gm_BaseTexture, v_vTexcoord);
	float diff = fwidth(starting_color.r);
    gl_FragColor = vec4(diff, diff, diff, 1.0);
}