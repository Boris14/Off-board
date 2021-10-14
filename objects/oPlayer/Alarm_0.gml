/// @description Release Kick
// You can write your code in this editor

audio_play_sound(sndKick, 0, 0);

with(oSlave){
	if not bIsKicked{
		bIsKicked = true;
		hsp = other.minKick + other.kick;
		vsp = -(hsp * 0.5);
	}
}
kick = 0;
strength_direction = 1;
alarm[1] = 10;