/// @description Random spawning of obstacles.

if(gameOngoing){
	var obstacle = instance_create_layer(500, 255, "Instances", obj_obstacle);
	//obstacle.image_xscale = 2;
	//obstacle.image_yscale = 2;
	obstacle.image_xscale = 1 + difficultyLevel;
	obstacle.image_yscale = 1 + difficultyLevel;

	var baseTimeToWait = 30;
	baseTimeToWait += difficultyLevel * 5;
	
	var timeToWait = choose(baseTimeToWait, baseTimeToWait+15, baseTimeToWait+30, baseTimeToWait+45);

	alarm[0] = timeToWait;
}