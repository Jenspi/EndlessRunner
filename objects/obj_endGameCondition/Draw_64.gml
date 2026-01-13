/// @description End game; display score & replay button.

draw_text(20, 80, "GAME OVER! :(" );

//var replayButton = draw_button(20,110, 140,140,!mouse_check_button(mb_left));

instance_create_layer( 70,150,"Instances",obj_replayButton);