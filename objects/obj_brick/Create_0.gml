//Assigns the instance ID of our brick painter to a variable
surface_id = instance_find(obj_brick_painter, 0)

//Creates a local gradient variable based on the gradient variable
//from our surface ID, in this case our brick painter
gradient = surface_id.gradient

//Creates a variable color that is given a value equal to 
//the 32bit color value of the pixel at the bricks location
color = surface_getpixel_ext(gradient, x, y)

//Assigns that color to the created brick
image_blend = color