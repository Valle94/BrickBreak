//Before round starts, ball should follow the paddle
if start = false
{
	x = obj_paddle.x;
}

//Press space or "W" to begin the round and shoot the ball
if start = false
{
	if keyboard_check_pressed(vk_space)
	or keyboard_check_pressed(vk_up)
	or keyboard_check_pressed(ord("W"))
	{
		//Sound effect
		audio_play_sound(snd_click, 0, false, 1)
		//Ball travels straight up
		direction = 90;
		speed = ball_speed;
		start = true;
	}
}

//Updating our speed multiplier. As destroyed/total bricks
//approaches one, our multiplier will approach 2, making the 
//ball move twice as fast towards the end of the level.
ball_speed_mult = ((bricks_destroyed / total_bricks) + 1);

//Adjust the speed based on base speed * a multiplier
speed = ball_speed * ball_speed_mult * ball_slow_mult;