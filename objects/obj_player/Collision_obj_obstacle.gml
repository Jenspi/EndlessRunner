/// @description Insert description here
// You can write your code in this editor

if(currentState != POSSIBLE_STATES.death){
	sprite_index = spr_player_death;
	currentState = POSSIBLE_STATES.death;
	//y -= 15;
	y = 170;
	myGravity = 0;//prevent glitching after death
	obj_gamemanager.gameOngoing = false;
}