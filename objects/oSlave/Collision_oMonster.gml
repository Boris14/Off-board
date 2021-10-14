/// @description Gets eaten
// You can write your code in this editor

var slaveColor = color;
var monster = noone;

if(other.attitude <= other.worstAttitude){
	return;	
}

if(place_meeting(x - 50, y, oMonster) and place_meeting(x + 50, y, oMonster)){
	with(other){
		audio_pause_sound(sndMonsterIdle);
		if(!audio_is_playing(sndMonsterBite)){
			audio_play_sound(sndMonsterBite, 0, false);
		}
		switch(sprite_index){
			case sPurpleMonsterIdle:
				sprite_index = sPurpleMonsterBiting;
				image_index = 0;
				alarm[0] = 31;
				break;
			
			case sGreenMonsterIdle:
				sprite_index = sGreenMonsterBiting;
				image_index = 0;
				alarm[0] = 33;
				break;
				
			default:
				break;
		}
	}
	
	if(place_meeting(x, y - 80, oMonster)){
		monster = other;
		with(oGame){
			eatenSlaveColor = slaveColor;
			fedMonster = monster;
			alarm[0] = room_speed;	
		}
		audio_play_sound(sndSlaveEaten, 0, 0);
		instance_destroy();
		return;
	}	
}
