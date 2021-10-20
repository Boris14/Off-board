/// @description Release Kick
// You can write your code in this editor

audio_play_sound(sndKick, 0, 0);

with(oSlave){
	if not bIsKicked{
		bIsKicked = true;
		switch(sprite_index){
			case sNormalSlaveIdle:
				sprite_index = sNormalSlaveKicked;
				break;
				
			case sPurpleSlaveIdle:
				sprite_index = sPurpleSlaveKicked;
				break;
				
			case sGreenSlaveIdle:
				sprite_index = sGreenSlaveKicked;
				break;
				
			case sOrangeSlaveIdle:
				sprite_index = sOrangeSlaveKicked;
				break;
				
			default:
				break;
			
		}
		hsp = other.minKick + other.kick;
		vsp = -(hsp * 0.5);
	}
}
kick = 0;
strength_direction = 1;
alarm[1] = 10;