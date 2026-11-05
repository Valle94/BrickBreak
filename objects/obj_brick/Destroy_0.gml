var spawn_power = irandom(3)

if spawn_power == 0
{
	instance_create_layer(x, y, "Instances", obj_powers)
}