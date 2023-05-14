shader_type canvas_item;
uniform vec4 mix_color: source_color;
uniform float mix_str: hint_range(0, 1);
uniform sampler2D SCREEN_TEXTURE: hint_screen_texture, filter_linear_mipmap;
void fragment() {
    vec4 screen_color = texture(SCREEN_TEXTURE, UV);
    COLOR = mix(screen_color, mix_color, mix_str);
}