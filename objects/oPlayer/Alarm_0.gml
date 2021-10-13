/// @description Release Kick
// You can write your code in this editor

with(oSlave){
	if not isKicked{
		isKicked = true;
		hsp = other.minKick + other.kick;
		vsp = -(hsp * 0.5);
	}
}
kick = 0;
strength_direction = 1;
alarm[1] = 10;