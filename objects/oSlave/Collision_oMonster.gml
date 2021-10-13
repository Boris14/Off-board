/// @description Gets eaten
// You can write your code in this editor

var EatingMonster = other;

if(EatingMonster.attitude <= EatingMonster.worstAttitude){
	return;	
}

if(place_meeting(x - 60, y, oMonster) and place_meeting(x + 60, y, oMonster)){
	with(EatingMonster){
		switch(sprite_index){
			case sPurpleMonsterIdle:
				attitude++;
				sprite_index = sPurpleMonsterBiting;
				image_index = 0;
				alarm[0] = 31;
				break;
			
			case sGreenMonsterIdle:
				attitude++;
				sprite_index = sGreenMonsterBiting;
				image_index = 0;
				alarm[0] = 33;
				break;
				
			default:
				break;
		}
	}
	
	if(place_meeting(x, y - 80, oMonster)){
		with(oMonster){
			if(self != EatingMonster){
				attitude--;		
			}
		}
		instance_destroy();
		with(oGame){
			alarm[0] = room_speed;	
		}	
	}
}