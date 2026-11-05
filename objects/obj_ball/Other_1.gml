//This section of code causes the ball to "bounce" off the 
//top and side boundaries by altering the direction when
//the bounding box leaves the desired area. 
if bbox_left < 0
{
	hspeed = -hspeed
	x = xprevious
	if vspeed == 0
	{
		vspeed +=1
	}
}
if bbox_right > room_width
{
	hspeed = -hspeed
	x = xprevious
	if vspeed == 0
	{
		vspeed -=1
	}
}
if bbox_top < 0
{
	vspeed = -vspeed
}

//If the ball hits the bottom of the room:
if bbox_bottom > room_height
{
	//Play Sound effect
	audio_play_sound(snd_break, 0, false, 1)
	
	//the ball will be destroyed. Both the ball and the paddle will reset
	//to the start positions. The number of lives the player has will be
	//reduced by 1
	if global.lives > 0
	{
		instance_destroy();
		instance_create_layer(xstart, ystart, "Instances", obj_ball);
		obj_paddle.x = xstart;
		global.lives -= 1;
	}
	//the highscore will change if the player score is higher than
	//the previous highscore. The game will enter a "game over" state
	else
	{
		if global.score > global.highscore
		{
			global.highscore = global.score;
		}
		obj_control.game_over = true
	}
}