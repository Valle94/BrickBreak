//Restart room by pressing escape
if keyboard_check_pressed(vk_escape)
{
	room_goto(rm_main_menu);
}

//We can use the components from our speed multiplier calculations
//to determine when the room is complete and move to the next one.
if (obj_ball.bricks_destroyed / obj_ball.total_bricks) >= 1
and room == rm_level_1
{
	room_goto(rm_level_2);
}
if (obj_ball.bricks_destroyed / obj_ball.total_bricks) >= 1
and room == rm_level_2
{
	room_goto(rm_level_1);
}

//Game over; Press space to continue 
if game_over == true
{
	if keyboard_check_pressed(vk_space)
	{
		global.score = 0;
		global.lives = 3;
		room_goto(rm_level_1);
	}
}