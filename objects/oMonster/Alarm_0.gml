/// @description Stop biting
// You can write your code in this editor


switch(sprite_index){
	case sPurpleMonsterBiting:
		if(place_meeting(x - 10, y, oShipHitbox)){
			sprite_index = sPurpleMonsterDiving;
		}
		else{
			sprite_index = sPurpleMonsterIdle;
		}
		break;
		
	
	case sGreenMonsterBiting:
		if(place_meeting(x - 10, y, oShipHitbox)){
			sprite_index = sGreenMonsterDiving;
		}
		else{
			sprite_index = sGreenMonsterIdle;		
		}
		break;
		
	case sOrangeMonsterBiting:
		if(place_meeting(x - 10, y, oShipHitbox)){
			sprite_index = sOrangeMonsterDiving;
		}
		else{
			sprite_index = sOrangeMonsterIdle;		
		}
		break;
		
	case sPurpleMonsterDiving:
	case sGreenMonsterDiving:
	case sOrangeMonsterDiving:
		with(oGame){
			destroyedMonsterCount++;	
		}
		instance_destroy();
		break;
		
		
	default:
		break;
}
image_index = 0;

if(place_meeting(x - 10, y, oShipHitbox)){
	with(oShip){
		health--;
	}
	audio_play_sound(choose(sndWater1, sndWater2), 0, false);
	alarm[0] = 23;
}
else{
	audio_play_sound(sndMonsterIdle, 0, true);	
}