/// @description End game
// You can write your code in this editor

if(room == rGame){
	audio_stop_all();
	audio_play_sound(sndGameOver, 0, false);
	bGameRunning = false;
	room_goto(rGameOver)	
}