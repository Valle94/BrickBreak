//if room == rm_controls
//{
//	draw_set_halign(fa_center)
//	draw_set_color(c_white)

//	draw_text(350, 360, "Press A and D or Left and Right to Move")
//}
//else if room == rm_credits
//{
//	draw_text(room_width / 2, room_height / 2 - 40, "Brick Break was created by Max Valle")
//}
//else //If room is any of the game levels
//{
//	draw_set_color(c_white)
//	//Draw current score and highschore
//	draw_text(10, 10, "Score:")
//	draw_text(85, 10,  global.score)

//	draw_text(10, 40, "Highscore:")
//	draw_text(140, 40, global.highscore)

//	//Draw ball speed and multiplier for testing purposes
//	draw_set_halign(fa_right)

//	draw_text(1320, 10, "Speed Multiplier:")
//	draw_text(1390, 10, obj_ball.ball_speed_mult)

//	draw_text(1320, 40, "Speed:")
//	draw_text(1390, 40, obj_ball.speed)

//	draw_set_halign(fa_left)

//	//Draw image of empty lives beneath lives
//	for (var i = -1; i <= 1; i++) //This iterates from -1 to 1 because they're drawn based on the 
//								  //paddle position, so I need the middle iteration to be 0.
//	{
//		draw_sprite_ext(spr_lives, 1, obj_paddle.x + 40 * -i, obj_paddle.y - 2, 3, 3, 0, c_white, 1)
//	}

//	//Draw Lives on paddle location above images of empty lives. 
//	for (var i = -global.lives + 2; i <= 1; i++)
//	{
//		draw_sprite_ext(spr_lives, 0, obj_paddle.x + 40 * -i, obj_paddle.y - 2, 3, 3, 0, c_white, 1)
//	}

//	//Draw game over message
//	if game_over = true
//	{
//		draw_set_halign(fa_center)
//		draw_text(room_width / 2, 600, "GAME OVER!")
//		draw_text(room_width / 2, 650, "Press Space to continue")
//	}
//}