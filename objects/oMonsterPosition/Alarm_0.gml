/// @description Spawn a monster
// You can write your code in this editor

monster = instance_create_layer(x + irandom_range(-20, 20),
								y + irandom_range(-20, 20), 
								"Instances", oMonster);
