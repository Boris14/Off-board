/// @description Friendly diving
// You can write your code in this editor

audio_play_sound(choose(sndWater1, sndWater2), 0, false);
	
switch(color){
	case "Purple":
		sprite_index = sPurpleMonsterDiving;
		break;
			
	case "Green":
		sprite_index = sGreenMonsterDiving;
		break;
		
	default:
		break;
}
with(oGame){
	score = score + 600;
}
	
instance_create_layer(x, y - 50, "Instances", oMessage).scoreMsg = 600;
alarm[0] = 23;