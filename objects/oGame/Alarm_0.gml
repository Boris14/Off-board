/// @description For spawning slaves
// You can write your code in this editor

var xx = 450;
var yy = 460;

if(!bGameRunning){
	return;	
}

if(!instance_exists(oSlave)){
	
	if(instance_exists(fedMonster)){
		if(combo < 10)	combo++;
		var msg = instance_create_layer(fedMonster.x, fedMonster.y - 50, "Instances", oMessage);
		msg.scoreMsg = 100 * combo;
		score += 100 * combo;
		audio_play_sound(sndGetScore, 0, false);
		if((fedMonster.color == "Green" and fedMonster.attitude + 1 >= fedMonster.bestAttitude) or
			(fedMonster.color == "Green" and fedMonster.attitude + 2 >= fedMonster.bestAttitude and fedMonster.color == eatenSlaveColor)){
			fedMonster.attitude = fedMonster.bestAttitude;
			with(oMonster){
				if(attitude > worstAttitude){
					attitude++;
				}
			}
		}
		else{
			with(oMonster){
				if(id != other.fedMonster.id){
					instance_create_layer(x, y - 50, "Instances", oMessage).bShowUnfriendlyIcon = true;
					attitude--;
				}
				else{
					if(attitude < 0){
						attitude = 0;
					}
					else{
						attitude++;	
					}
					if(other.fedMonster.color == other.eatenSlaveColor){	
						attitude++;
						audio_play_sound(sndMonsterHappy, 0, false);
						if(instance_exists(msg)){
							msg.bShowFriendlyIcon = true;	
						}
					}
				}
			}
		}
	}
	
	instance_create_layer(xx, yy, "Instances", oSlave);
}

fedMonster = noone;
