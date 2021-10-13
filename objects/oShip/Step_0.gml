/// @description Check health
// You can write your code in this editor

if(health <= 0){
	with(oGame){
		alarm[2] = 20;	
	}
	instance_destroy();
}