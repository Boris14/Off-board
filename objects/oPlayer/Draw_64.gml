/// @description Draw Kickbar
// You can write your code in this editor

//draw_sprite_stretched(sKickBar, 0, kickbar_x, kickbar_y, kickbar_width, (kick/20 * kickbar_height));
draw_sprite_ext(sKickBar, 0, kickbar_x, kickbar_y, 1, kick/20, 0, c_white, 1);
draw_sprite(sKickBarBorder, 0, kickbar_x, kickbar_y);