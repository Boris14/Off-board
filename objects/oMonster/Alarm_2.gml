/// @description Friendly diving
// You can write your code in this editor

audio_play_sound(choose(sndWater1, sndWater2), 0, false);
	
switch(color){
	case "Purple":
	
		with(oGame){
			score = score + 1000;
		}
	
		instance_create_layer(x, y - 50, "Instances", oMessage).scoreMsg = 600;
		sprite_index = sPurpleMonsterDiving;
		break;
			
	case "Green":
		with(oShip){
			if(health < 3){
				health++;	
			}
		}
		instance_create_layer(x, y - 50, "Instances", oMessage).bShowHeartIcon = true;
		
		sprite_index = sGreenMonsterDiving;
		break;
		
	default:
		break;
}

alarm[0] = 23;