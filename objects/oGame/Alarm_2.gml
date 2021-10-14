/// @description End game
// You can write your code in this editor

if(room == rGame){
	score = 0;
	audio_pause_all();
	bGameRunning = false;
	room_goto(rGameOver)	
}