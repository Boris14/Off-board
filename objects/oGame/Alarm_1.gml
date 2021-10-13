/// @description Create an Island
// You can write your code in this editor

if(!instance_exists(oIsland)){
	instance_create_layer(room_width + irandom_range(150, 400), 
							irandom_range(300, 350), "Islands", oIsland);
}