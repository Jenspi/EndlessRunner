/// @description Deal with player input.

moveY += myGravity;
jumpHeight = 12 + (obj_gamemanager.difficultyLevel * 1.5);

if(moveY > 0){
	//check if tileset is right below player (player is grounded)
	if(place_meeting(x, y+3, myTileSet)){
		moveY = 0;
		
		if(currentState != POSSIBLE_STATES.attacking){
			currentState = POSSIBLE_STATES.running;
		}
	}
}

//if player is dead
if(currentState == POSSIBLE_STATES.death){
	//effect animation by looking at it on a per-frame level
	//image_index is what frame of animation currently on
	if(image_index >= 10){
		image_speed = 0;//dont cycle through sub images; stay still
	}
	
}

if(currentState == POSSIBLE_STATES.running){
	// Jumping: //
	if(keyboard_check_pressed(vk_space)){
		moveY -= jumpHeight;
		currentState = POSSIBLE_STATES.jumping;
	}
	
	// Hitting: //
	if(mouse_check_button_pressed(mb_left)){
	//if(keyboard_check_pressed(vk_control)){
		sprite_index = spr_player_attack;
		image_index = 5;// peak frame of attack
		currentState = POSSIBLE_STATES.attacking;
	}
}

// If player attacks with mouse left-click
if(currentState == POSSIBLE_STATES.attacking){
	
	// spawn in hitbox on peak of swing, then destory at end of image index sequence
	if(image_index == 5){
		myHitbox = instance_create_layer(x+25,y-50,"Instances",obj_hitbox);
		myHitbox.image_xscale = 50;
		myHitbox.image_yscale = 80;
		myHitbox.image_alpha = 0.3;
	}
	// Play animation once instead of looping
	if(image_index >= (image_number-1)){
		currentState = POSSIBLE_STATES.running;
		sprite_index = spr_player_running;
		instance_destroy(myHitbox);
	}
}

move_and_collide(0, moveY, self, 4,0,0);