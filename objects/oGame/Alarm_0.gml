/// @description For spawning slaves
// You can write your code in this editor

var xx = 450;
var yy = 460;

if(!bGameRunning){
	return;	
}

if(!instance_exists(oSlave)){
	instance_create_layer(xx, yy, "Instances", oSlave);
	
	if(instance_exists(fedMonster)){
		if(fedMonster.color == eatenSlaveColor){
			score += 300;
			instance_create_layer(fedMonster.x, fedMonster.y - 50, "Instances", oMessage).scoreMsg = 300;
		}
		else{
			instance_create_layer(fedMonster.x, fedMonster.y - 50, "Instances", oMessage).scoreMsg = 100;
			score += 100;		
		}
	}
	
	with(oMonster){
		if(instance_exists(other.fedMonster)){
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
			}
		}
	}
	
	fedMonster = noone;
	scoreToTransfer = 0;
}