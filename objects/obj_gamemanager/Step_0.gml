/// @description Track distance traveled.

if(gameOngoing){
	distanceTraveled += worldSpeed;
	distanceToNextDifficultyLevel -= worldSpeed;
	
	if(distanceToNextDifficultyLevel <= 0){
		difficultyLevel += 1;
		distanceToNextDifficultyLevel = 1000;
	}
}