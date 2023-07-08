/// @description Insert description here
// You can write your code in this editor

gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
//gpu_set_blendmode_ext(bm_src_alpha, bm_one);
gpu_set_fog(true, c_black, 0, 1);
draw_self();
gpu_set_fog(false, c_black, 0, 0);

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);