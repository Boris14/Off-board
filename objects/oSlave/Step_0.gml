/// @description Check if the slave has been kicked
// You can write your code in this editor

//Apply gravity
vsp = vsp + grv;
if(hsp > 0){
	if(hsp - grv <= 0){
		hsp = 0;	
	}
	else{
		hsp = hsp - grv;
	}
}

//Rotate the slave
if(bIsKicked){
	if(sprite_index != sSlaveKicked){
		sprite_index = sSlaveKicked;	
	}
	image_angle = image_angle - 5;
}

//Move the slave
x = x + hsp;

if(place_meeting(x, y + vsp, oFloor)){
	while(!place_meeting(x, y + 1, oFloor)){
		y = y + 1;	
	}
	vsp = 0;
}
y = y + vsp;

if(y >= deathY){
	instance_create_layer(x, y, "Instances", oSplash);
	
	audio_play_sound(choose(sndSplash1, sndSplash2), 0, false);
	instance_destroy();
	with(oMonster){
		attitude--;	
	}
	with(oGame){
		alarm[0] = room_speed;	
	}
}