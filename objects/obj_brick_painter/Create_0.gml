//The following code creates the surface which each brick will reference
//when being created to determine its color. In the room instance creation
//order, this object must be loaded before all bricks to avoid an error. 

//Initialize surface variable
gradient = 1

//Create the surface
if (!surface_exists(gradient))
{
	gradient = surface_create(1400, 900);
}

//Set the draw target to be our surface
surface_set_target(gradient);

//Clear the surface in case there's anything on it
draw_clear_alpha(c_black, 0)

//Draw our specified sprite onto the created surface
if room == rm_level_1
{
	draw_sprite(spr_brick_colors, 0, 0, 0)
}
if room == rm_level_2
{
	draw_sprite(spr_brick_colors, 1, 0, 0)
}

//Reset surface target to GM default
surface_reset_target()

//Render the surface
draw_surface(gradient, 0, 0);