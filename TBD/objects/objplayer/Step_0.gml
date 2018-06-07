if (keyboard_check(vk_down)) vspeed = 5
if (keyboard_check(vk_up)) vspeed = -5
if (keyboard_check(vk_right)) hspeed = 5
if (keyboard_check(vk_left)) hspeed = -5
if !keyboard_check(vk_left) and !keyboard_check(vk_right) and !keyboard_check(vk_down) and !keyboard_check(vk_up)
{
	hspeed = 0
	vspeed = 0
}
//Shooting
cooldownshoot += 1
if (cooldownshoot >= 10 and mouse_check_button(mb_left))
{
	 script_execute(scrshoot)
	 cooldownshoot = 0
}
//Collision
//Collision
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
