/// @description Insert description here
// You can write your code in this editor

currentState = POSSIBLE_STATES.running;

jumpHeight = 15;
moveY = 0;
myGravity = 1;
myTileSet = layer_tilemap_get_id("Ground");
myHitbox = pointer_null;

enum POSSIBLE_STATES {
	running,
	death,
	jumping,
	attacking,
}