if (keyboard_check_pressed(vk_left)) index--;
if (keyboard_check_pressed(vk_right)) index++;
if (index < 0) index = array_length(bunny_sprites) - 1;
if (index >= array_length(bunny_sprites)) index = 0;

var spr = bunny_sprites[index];


shader_set(shd_outline);
var u_tex_size = shader_get_uniform(shd_outline, "texSize");
shader_set_uniform_f(u_tex_size, sprite_get_width(spr), sprite_get_height(spr));
draw_sprite(spr, 0, 0, 0);
shader_reset();