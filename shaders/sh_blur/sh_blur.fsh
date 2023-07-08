varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 texture_size;
uniform vec2 center;

uniform float blur_radius;
uniform float focus_radius;

uniform float vignette_radius;
uniform float vignette_feather;

void main() {
	
    vec2 texel = 1. / texture_size;
	
	float dist = length(v_vTexcoord - center);
	float focus_radius_iterations = 10. * (1. - (focus_radius / dist));
	
	float color_multiplier = 1.0;
	
	if (dist > vignette_radius + vignette_feather) {
		color_multiplier = 0.;
	} else if (dist > vignette_radius) {
		color_multiplier = 1. - ((dist - vignette_radius) / vignette_feather);
	}
	
	vec4 color = texture2D(gm_BaseTexture, v_vTexcoord) * color_multiplier;
	
	float count = 1.;
	
	float xx = 0.0;
	float yyy = 0.0;
	
	for (float d = 1.; d <= 10.; d += 2.) {
		if (d > blur_radius || d >= focus_radius_iterations) break;
		xx = d * texel.x;
		for (float yy = 1.; yy <= 10.; yy += 2.) {
			if (yy > blur_radius) break;
			yyy = yy * texel.y;
			count += 4.;
			color += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + xx, v_vTexcoord.y + yyy)) * color_multiplier;
			color += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - xx, v_vTexcoord.y + yyy)) * color_multiplier;
			color += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + xx, v_vTexcoord.y - yyy)) * color_multiplier;
			color += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - xx, v_vTexcoord.y - yyy)) * color_multiplier;
		}
	}
	
	color /= count;
	color.a = 1.;
    //color[0] = 1;
	
    gl_FragColor = v_vColour * color;
}
