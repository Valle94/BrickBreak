//Play sound effect
audio_play_sound(snd_powerup, 0, false, 1)

//When it collides with a power up, set state of corresponding power
//power up to on (true) and set an alarm for duration of that power. 

if other.image_index = 0
{
	instance_destroy(other)
	image_xscale = 1.5
	alarm[0] += 10 * game_get_speed(gamespeed_fps) 
}
else if other.image_index = 1
{
	instance_destroy(other)
	obj_ball.ball_slow_mult = 0.8
	alarm[1] += 10 * game_get_speed(gamespeed_fps) 
}
else
{
	instance_destroy(other)
	global.lives += 1
}