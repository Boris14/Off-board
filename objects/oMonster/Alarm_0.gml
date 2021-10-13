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
		
	case sPurpleMonsterDiving:
	case sGreenMonsterDiving:
		instance_destroy();
		break;
		
		
	default:
		break;
}
image_index = 0;

if(place_meeting(x - 10, y, oShipHitbox)){
	with(oShip){
		health--;	
		if(health <= 0){
			instance_destroy();	
		}
	}
	alarm[0] = 23;
}