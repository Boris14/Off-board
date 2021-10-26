/// @description Draw Attitude
// You can write your code in this editor
if(!bDisplayAttitude){
	return;	
}

if(attitude < 0){
	draw_sprite(sUnfriendlyIcon, 0, x - 40, y + 120);
	draw_text_transformed_color(x + 20, y + 120, 
							string(-attitude) + " / " + string(-worstAttitude), 
							1.5, 1.5, 0, 
							redColor, redColor, redColor, redColor, 1);
}
else{
	draw_sprite(sFriendlyIcon, 0, x - 40, y + 120);
	draw_text_transformed_color(x + 20, y + 120, 
							string(attitude) + " / " + string(bestAttitude), 
							1.5, 1.5, 0, 
							c_lime, c_lime, c_lime, c_lime, 1);
}