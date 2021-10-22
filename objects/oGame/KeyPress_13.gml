/// @description Switch rooms
// You can write your code in this editor


switch(room){
	case rMenu:
		bGameRunning = true;
		audio_play_sound(sndBackgroundMusic, 0, 1);
		room_goto(rGame);
		break;
		
	case rGameOver:
		room_goto(rMenu);
		score = 0;
		break;
		
	case rInfo:
		room_goto(rMenu);
		break;

	default:
		break;
}
