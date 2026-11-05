var power_select = random(9) //temp var for choosing power

//When created, randomly pick which power up image will show
//Increased chance for normal power up, small chance for extra life
//Will only spawn extra lives 1/10 times and if not full on lives
if (power_select = 9) and (global.lives < 3)
{
	image_index = 2
}
else
{
	image_index = choose(0, 1)
}

//Increase Image Scale
image_xscale = 2
image_yscale = 2

//Spawn moving towards bottom of the screen at speed. 
speed = 5
direction = -90