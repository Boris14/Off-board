/// @description Insert description here
// You can write your code in this editor

if(bShowHeartIcon){
	draw_sprite(sHeart, 0, x, y);	
}

if(bShowUnfriendlyIcon){
	draw_sprite(sUnfriendlyIcon, 0, x - 20, y + 12);	
}

if(bShowFriendlyIcon){
	draw_sprite(sFriendlyIcon, 0, x - 20, y + 12);
}

if(scoreMsg > 0){
	draw_text_transformed_color(x + 10, y, "+ " + string(scoreMsg), 
								1.5 + (scoreMsg * 0.003), 1.5 + (scoreMsg * 0.003), 
								0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
}