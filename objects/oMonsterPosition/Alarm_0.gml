/// @description Spawn a monster
// You can write your code in this editor

var destroyedMonsterCount = 0;

with(oGame){
	destroyedMonsterCount = self.destroyedMonsterCount;
}

monster = instance_create_layer(x + irandom_range(-20, 20), 
								y + irandom_range(-20, 20), 
								"Instances", oMonster);
with(monster){
	if(destroyedMonsterCount >= 7){
		minWorstAttitude = -4;
	}
	else if(destroyedMonsterCount >= 3){
		minWorstAttitude = -5;
	}
	else{
		minWorstAttitude = -6;	
	}

	worstAttitude = irandom_range(minWorstAttitude, minWorstAttitude + 1);
}