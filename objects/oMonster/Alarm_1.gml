/// @description Finish rising
// You can write your code in this editor

audio_play_sound(sndMonsterIdle, 0, 1);

switch(sprite_index){
	case sPurpleMonsterRising:
		sprite_index = sPurpleMonsterIdle;
		image_index = 0;
		break;
		
	case sGreenMonsterRising:
		sprite_index = sGreenMonsterIdle;
		image_index = 0;
		break;
		
	case sOrangeMonsterRising:
		sprite_index = sOrangeMonsterIdle;
		image_index = 0;
		break;
		
	default:
		break;
}