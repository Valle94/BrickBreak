//Left and Right paddle movement
if keyboard_check(vk_left)
or keyboard_check(ord("A"))
{
	x -= paddle_speed;
}
if keyboard_check(vk_right)
or keyboard_check(ord("D"))
{
	x += paddle_speed;
}

//Limit the x position to the size of the room
//with buffer for sprite size
x = clamp(x, (sprite_width/2), room_width - (sprite_width/2));