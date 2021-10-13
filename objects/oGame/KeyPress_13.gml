/// @description Start Game
// You can write your code in this editor


switch(room){
	case rMenu:
		room_goto(rGame);
		break;
		
	case rGameOver:
		room_goto(rMenu);
		break;

	default:
		break;
}
