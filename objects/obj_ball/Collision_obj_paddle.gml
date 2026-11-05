//Bounce the ball off the paddle in the direction of a created vector
//Clamp is used to avoid odd behaviour when colliding with the very edge
direction = clamp(point_direction(other.x, other.y, self.x, self.y), 40, 140)

//Play bounce sound
audio_play_sound(snd_bounce, 0, false, 2, 0, 0.5)