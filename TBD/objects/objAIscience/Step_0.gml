hspeed = 0 
vspeed = 0
if direction1 = 1
{
	sprite_index = sprNRAsIdle
}
//Right
if direction1 = 2
{
	hspeed = 3
	image_speed = hspeed/3
	sprite_index = sprNRAsRight
}
//Up
if direction1 = 3
{
	vspeed = -3
	image_speed = vspeed/3
	sprite_index = sprNRAsUp
}
//Down
if direction1 = 4
{
	vspeed = 3
	image_speed = vspeed/3
	sprite_index = sprNRAsDown
}
//Left
if direction1 = 5
{
	hspeed = -3
	image_speed = hspeed/3
	sprite_index = sprNRAsLeft
}


//Collision////////////////////////////////////
if hspeed != 0
if !place_free(x + hspeed, y)
{
 if hspeed > 0 move_contact_solid(0,hspeed)
 if hspeed < 0 move_contact_solid(180,-hspeed)
 hspeed = 0
}

///////
if vspeed != 0
if !place_free(x + hspeed, y + vspeed)
{
 if vspeed > 0 move_contact_solid(270,vspeed)
 if vspeed < 0 move_contact_solid(90,-vspeed)
 vspeed = 0
}
//CHANGE POSITIONS
cooldown += 1
if (cooldown >= 50) 
{
	direction1 = irandom(5)
	cooldown = 0
}










