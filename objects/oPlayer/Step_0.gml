/// @description Watch kick
// You can write your code in this editor

if(!instance_exists(oSlave) or bKickReleased){
	return;	
}

with(oSlave){
	if(bIsKicked){
		return;	
	}
}

//Start the kick when space is pressed
if(keyboard_check(vk_space)){
	if(strength_direction){
		kick = kick + 0.2;
		if(kick >= 20){
			strength_direction = 0;
			kick = 20;
		}
	}
	else{
		kick = kick - 0.2;	
		if(kick <= 0){
			strength_direction = 1;
			kick = 0;
		}
	}	
}

//Initiate the kick when space is released
if(keyboard_check_released(vk_space)){
	bKickReleased = true;
	sprite_index = sPlayerKicking;
	image_index = 0;
	alarm[0] = 30;
}
