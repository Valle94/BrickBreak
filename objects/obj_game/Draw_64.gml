//Draw current score and highschore
draw_text(10, 10, "Score:")
draw_text(85, 10,  global.score)

draw_text(10, 40, "Highscore:")
draw_text(140, 40, global.highscore)

//Draw ball speed and multiplier for testing purposes
draw_set_halign(fa_right)

draw_text(1320, 10, "Speed Multiplier:")
draw_text(1390, 10, obj_ball.ball_speed_mult)

draw_text(1320, 40, "Speed:")
draw_text(1390, 40, obj_ball.speed)

draw_set_halign(fa_left)

////Draw Lives on paddle location
for (var i = -global.lives + 2; i <= 1; i++)
{
	draw_sprite_ext(spr_lives, 0, obj_paddle.x + 40 * -i, obj_paddle.y - 2, 3, 3, 0, c_white, 1)
}

//Draw Instructions
draw_text(40, 860, "Use the left and right arrows or A and D to move. " + 
"Press the up arrow, W, or Space to begin. Esc to restart the room.")