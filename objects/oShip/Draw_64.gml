/// @description Insert description here
// You can write your code in this editor

draw_text_transformed_color(room_width * 0.72, room_height * 0.08, "Ship Health: ", 1.6, 1.6, 0, c_black, c_black, c_black, c_black, 1);

for(var i = 0; i < health; ++i){
	draw_sprite(sHeart, 0, (room_width * 0.85) + (i * 90), room_height * 0.1);	
}