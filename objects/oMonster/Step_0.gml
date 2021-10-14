/// @description Randomize start of movement
// You can write your code in this editor

if(attitude <= worstAttitude and bDisplayAttitude){
	bDisplayAttitude = false;
	audio_play_sound(sndMonsterRoar, 0, false);
	hspeed = -5;	
}
else if(attitude > worstAttitude){
	hspeed = 0;	
}