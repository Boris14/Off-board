/// @description Show player info on screen
// You can write your code in this editor
switch(room){
	case rMenu:
		draw_text_transformed_color(room_width * 0.4, room_height * 0.48,
									"Press I for How to Play", 
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
	
	case rInfo:
		draw_text_transformed_color(room_width * 0.45, room_height * 0.25,
									"Feed the monsters by kicking slaves in their mouths. Don't let them get too hungry because your ship is going to pay for it", 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.45, room_height * 0.3,
									"You charge your kick with SPACE", 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.45, room_height * 0.35,
									"Every monster type has a different effect when it's fully satisfied", 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.45, room_height * 0.4,
									"Monsters get extra happy if you give them a slave of the same color", 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.33, room_height * 0.6,
									"Press Enter to return to Menu", 
									2.5, 2.5, 0, c_white, c_white, c_white, c_white, 1);						
									
									
									
	
	default:
		break;
}
