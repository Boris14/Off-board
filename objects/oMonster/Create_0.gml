/// @description Establish variables
// You can write your code in this editor

attitude = 0;
worstAttitude = irandom_range(-4, -6);
bestAttitude = irandom_range(2, 3);
bDisplayAttitude = true;
redColor = make_color_rgb(238, 20, 91);

color = choose("Purple", "Green");

switch(color){
	case "Purple":
		sprite_index = sPurpleMonsterRising;
		break;
		
	case "Green":
		sprite_index = sGreenMonsterRising;
		break;
	
	default:
		break; 
}

audio_play_sound(choose(sndMonsterRising1, sndMonsterRising2), 0, 0);
audio_play_sound(choose(sndWater1, sndWater2), 0, 0);
alarm[1] = 23;
