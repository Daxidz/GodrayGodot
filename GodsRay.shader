shader_type canvas_item;

uniform int angle;
uniform float width : hint_range(0, 1);

uniform int nb_branches;


//void fragment() {
//	vec2 scale = TEXTURE_PIXEL_SIZE;
////	float x_pos = UV.x
//	if ((UV.x >= UV.y) || (UV.x < UV.y  - 1.0/width)) {
//		COLOR = vec4(0.0, 0.0, 0.0, 0.0);
//	}
//}


void fragment() {
	vec2 ps = TEXTURE_PIXEL_SIZE;
    vec2 ratio = (ps.x > ps.y) ? vec2(ps.y / ps.x, 1) : vec2(1, ps.x / ps.y);
	
	vec2 scale = TEXTURE_PIXEL_SIZE;
	float x_pos = UV.x * ratio.x;
	float y_pos = UV.y * ratio.y;
	
	if ((x_pos>= y_pos)) {
		COLOR = vec4(0.0, 0.0, 0.0, 0.0);
	}
	
	if (x_pos < y_pos - width) {
		COLOR = vec4(0.0, 0.0, 0.0, 0.0);
	}
	
}
