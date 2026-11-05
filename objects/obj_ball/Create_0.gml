//Initialization variables
start = false; //Used for starting the round

//The following are all related to or used for
//calculating ball speed. The aim is to have the 
//ball speed up by a normalized multiplier based
//on the number of bricks that have been destroyed

//Base ball speed
ball_speed = 5;
//Counts total number of starting bricks at start of room
total_bricks = instance_number(obj_brick);
//Variable for counting current number of bricks
bricks_destroyed = 0;

//A multiplier to ball speed based on normalized bricks destroyed
//This will start at one because this updates in the step event
ball_speed_mult = 1

//This multiplier will change when the player picks up the 
//power up that temporarily slows down the ball speed.
ball_slow_mult = 1