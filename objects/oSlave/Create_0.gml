/// @description Establish key variables
// You can write your code in this editor
						
color = choose("Normal", "Normal", "Purple", "Green");

switch(color){
	case "Normal":
		sprite_index = sNormalSlaveIdle;
		break;
		
	case "Purple":
		sprite_index = sPurpleSlaveIdle;
		break;
		
	case "Green":
		sprite_index = sGreenSlaveIdle;
		break;
		
	default:
		break;
}

vsp = 0;
hsp = 0;
grv = 0.3;
bIsKicked = false;
deathY = irandom_range(660, 750);