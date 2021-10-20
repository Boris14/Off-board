/// @description Friendly diving
// You can write your code in this editor

audio_play_sound(choose(sndWater1, sndWater2), 0, false);
	
switch(color){
	case "Purple":
		with(oShip){
			if(health < 3){
				health++;	
				instance_create_layer(x, y - 50, "Instances", oMessage).bShowHeartIcon = true;
			}
			else{
				with(oGame){
					score = score + 700;
				}
				instance_create_layer(other.x, other.y - 50, "Instances", oMessage).scoreMsg = 700;
			}
		}
	
		sprite_index = sPurpleMonsterDiving;
		break;
			
	case "Green":
		audio_play_sound(sndMonsterHappy, 0, false);
		for(var i = 0; i < instance_number(oMonster); ++i){
			var monster = instance_find(oMonster, i);
			if(other.id != monster.id){
				instance_create_layer(monster.x, monster.y - 50, "Instances", oMessage).bShowFriendlyIcon = true;
			}
		}
		
		sprite_index = sGreenMonsterDiving;
		break;
		
	case "Orange":
		with(oGame){
			score = score + 1000;
		}
		instance_create_layer(x, y - 50, "Instances", oMessage).scoreMsg = 1000;
		sprite_index = sOrangeMonsterDiving;
		break;
		
	default:
		break;
}

alarm[0] = 23;