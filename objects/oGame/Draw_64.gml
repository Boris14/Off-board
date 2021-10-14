/// @description Show player info on screen
// You can write your code in this editor
switch(room){
	case rMenu:
		draw_text_transformed_color(room_width * 0.4, room_height * 0.48,
									"Space to charge kick", 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.37, room_height * 0.6,
									"Press Enter to Start", 
									2.5, 2.5, 0, c_white, c_white, c_white, c_white, 1);
		break;
	
	case rGame:
		draw_text_transformed_color(room_width * 0.05, room_height * 0.08,
									"Score: " + string(score), 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		break;
		
	case rGameOver:
		draw_text_transformed_color(room_width * 0.45, room_height * 0.5,
									"Score: " + string(score), 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.33, room_height * 0.6,
									"Press Enter to return to Menu", 
									2.5, 2.5, 0, c_white, c_white, c_white, c_white, 1);
		break;
	
	default:
		break;
}
