/// @description Insert description here
// You can write your code in this editor

if(bShowHeartIcon){
	draw_sprite(sHeart, 0, x, y);	
}

if(scoreMsg > 0){
	draw_text_transformed_color(x, y, "+ " + string(scoreMsg), 
								1.5 + (scoreMsg * 0.003), 1.5 + (scoreMsg * 0.003), 
								0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
}