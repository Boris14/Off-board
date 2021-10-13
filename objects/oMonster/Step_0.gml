/// @description Randomize start of movement
// You can write your code in this editor

if(startMovementDelay > 3){
	startMovementDelay--;	
}
else if(startMovementDelay >= 0){
	image_speed = 1;
	startMovementDelay = -1;
}

if(attitude <= worstAttitude){
	bDisplayAttitude = false;
	hspeed = -5;	
}
else{
	hspeed = 0;	
}