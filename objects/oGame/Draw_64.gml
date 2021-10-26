/// @description Show player info on screen
// You can write your code in this editor

switch(room){
	case rMenu:
		draw_text_transformed_color(room_width * 0.5, room_height * 0.5,
									"Press I for How to Play", 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.5, room_height * 0.65,
									"Press Enter to Start", 
									3, 3, 0, c_white, c_white, c_white, c_white, 1);
		break;
	
	case rGame:
		draw_text_transformed_color(room_width * 0.1, room_height * 0.1,
									"Score: " + string(score), 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		if(combo > 1){
			draw_text_transformed_color(room_width * 0.1, room_height * 0.15,
										"COMBO x" + string(combo), 
										comboTextSize, comboTextSize, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
			if(comboTextSize > 1.5) comboTextSize -= 0.1;
		}
		break;
		
	case rGameOver:
		draw_text_transformed_color(room_width * 0.5, room_height * 0.55,
									"Score: " + string(score), 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.5, room_height * 0.7,
									"Press Enter to return to Menu", 
									2.5, 2.5, 0, c_white, c_white, c_white, c_white, 1);
		break;
	
	case rInfo:
		draw_text_transformed_color(room_width * 0.5, room_height * 0.13,
									"How to Play", 
									3.5, 3.5, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.5, room_height * 0.3,
									"Feed the monsters by kicking slaves in their mouths.\nIf you let them get too hungry they will eat your ship.", 
									2, 2, 0, c_white, c_white, c_white, c_white, 1);
		draw_text_transformed_color(room_width * 0.5, room_height * 0.45,
									"Charge your kick with SPACE", 
									2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		draw_text_transformed_color(room_width * 0.5, room_height * 0.6,
									"Every monster type has a different effect when it's fully\nsatisfied. Monsters get extra happy if you give them a\nslave of the same color.", 
									2, 2, 0, c_white, c_white, c_white, c_white, 1);
		draw_text_transformed_color(room_width * 0.5, room_height * 0.85,
									"Press Enter to return to Menu", 
									2.5, 2.5, 0, c_white, c_white, c_white, c_white, 1);						
									
									
									
	
	default:
		break;
}
