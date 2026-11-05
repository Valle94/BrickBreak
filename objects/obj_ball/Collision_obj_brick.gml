//Bounce off of the brick after collisions
move_bounce_all(true);

//Destroy the brick
instance_destroy(other);

//Increments bricks destroyed
bricks_destroyed += 1;

//Play bounce sound
audio_play_sound(snd_bounce, 0, false, 2, 0, 1);

//Increment player score
global.score += 1;