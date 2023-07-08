shader_set(sh_blur);

var _uniform_tex_size = shader_get_uniform(sh_blur, "texture_size");
shader_set_uniform_f(_uniform_tex_size, 1920, 1080);

var _uniform_focus_radius = shader_get_uniform(sh_blur, "focus_radius");
shader_set_uniform_f(_uniform_focus_radius, global.focus_radius);

var _uniform_vignette_radius = shader_get_uniform(sh_blur, "vignette_radius");
shader_set_uniform_f(_uniform_vignette_radius, global.vignette_radius);

var _uniform_vignette_feather = shader_get_uniform(sh_blur, "vignette_feather");
shader_set_uniform_f(_uniform_vignette_feather, global.vignette_feather);

var _uniform_blur_radius = shader_get_uniform(sh_blur, "blur_radius");
shader_set_uniform_f(_uniform_blur_radius, global.blur_radius);

var _uniform_center = shader_get_uniform(sh_blur, "center");
shader_set_uniform_f(_uniform_center, global.focus_x, global.focus_y);

draw_surface(application_surface, 0, 0);

shader_reset();

