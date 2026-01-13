/// @description World speed, obstacle spawn call.
window_set_caption("Endless Runner v1.0.0");
window_set_cursor(cr_none);
worldSpeed = 7;
distanceTraveled = 0;
gameOngoing = true;
difficultyLevel = 1;
distanceToNextDifficultyLevel = 1000;
barrelsDestroyed = 0;

alarm[0] = 60;// call obstacle spawner each 1 second (60 frames)