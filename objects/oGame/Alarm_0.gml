/// @description For spawning slaves
// You can write your code in this editor

var xx = 450;
var yy = 460;

if(!instance_exists(oSlave)){
	instance_create_layer(xx, yy, "Instances", oSlave);

	score++;
}