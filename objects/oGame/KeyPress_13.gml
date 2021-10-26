/// @description Switch rooms
// You can write your code in this editor


switch(room){
	case rMenu:
		audio_play_sound(sndButtonPress, 0, 0);
		bGameRunning = true;
		audio_play_sound(sndBackgroundMusic, 0, 1);
		room_goto(rGame);
		break;
		
	case rGameOver:
		audio_play_sound(sndButtonPress, 0, 0);
		room_goto(rMenu);
		score = 0;
		break;
		
	case rInfo:
		audio_play_sound(sndButtonPress, 0, 0);
		room_goto(rMenu);
		break;

	default:
		break;
}
