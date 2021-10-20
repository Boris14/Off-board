/// @description Attack the ship
// You can write your code in this editor

attitude = 0;

switch(sprite_index){
	case sPurpleMonsterIdle:
		sprite_index = sPurpleMonsterBiting;
		image_index = 0;
		audio_play_sound(sndMonsterBite, 0, false);
		alarm[0] = 26;
		break;
			
	case sGreenMonsterIdle:
		sprite_index = sGreenMonsterBiting;
		image_index = 0;
		audio_play_sound(sndMonsterBite, 0, false);
		alarm[0] = 26;
		break;
		
	case sOrangeMonsterIdle:
		sprite_index = sOrangeMonsterBiting;
		image_index = 0;
		audio_play_sound(sndMonsterBite, 0, false);
		alarm[0] = 26;
		break;
				
	default:
		break;
}