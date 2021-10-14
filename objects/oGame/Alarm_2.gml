/// @description End game
// You can write your code in this editor

if(room == rGame){
	audio_pause_all();
	bGameRunning = false;
	room_goto(rGameOver)	
}