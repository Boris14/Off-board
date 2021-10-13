/// @description Establish variables
// You can write your code in this editor

sprite_index = choose(sPurpleMonsterIdle, sGreenMonsterIdle);
image_speed = 0;
startMovementDelay = irandom_range(1, 100);
worstAttitude = irandom_range(-4, -6);
bestAttitude = irandom_range(2, 3);
attitude = 0;
bDisplayAttitude = true;
redColor = make_color_rgb(238, 20, 91);