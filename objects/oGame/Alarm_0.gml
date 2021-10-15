/// @description For spawning slaves
// You can write your code in this editor

var xx = 450;
var yy = 460;

if(!bGameRunning){
	return;	
}

if(!instance_exists(oSlave)){
	
	if(instance_exists(fedMonster)){
		with(oMonster){
			if(id != other.fedMonster.id){
				attitude--;
			}
			else{
				if(attitude < 0){
					attitude = 0;
				}
				else{
					attitude++;	
				}
				if(other.fedMonster.color == other.eatenSlaveColor)	attitude++;
			}
		}
		instance_create_layer(fedMonster.x, fedMonster.y - 50, "Instances", oMessage).scoreMsg = 100;
		score += 100;		
	}
	
	instance_create_layer(xx, yy, "Instances", oSlave);
}

fedMonster = noone;
