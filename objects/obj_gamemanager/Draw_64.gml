/// @description Display distance traveled.
var adjustedDistanceTraveled = distanceTraveled / 10.0;
var displayDistance = draw_text(20, 20, ("Distance Traveled: " + string(adjustedDistanceTraveled)) );
var displayBarrelsDestroyed = draw_text(20, 40, ("Barrels Destroyed: " + string(barrelsDestroyed)) );

if(!gameOngoing){
	instance_create_layer(0,0,"Instances", obj_endGameCondition);
}