if (keyboard_check(vk_down)) vspeed = 5
if (keyboard_check(vk_up)) vspeed = -5
if (keyboard_check(vk_right)) hspeed = 5
if (keyboard_check(vk_left)) hspeed = -5
if !keyboard_check(vk_left) and !keyboard_check(vk_right) and !keyboard_check(vk_down) and !keyboard_check(vk_up)
{
	hspeed = 0
	vspeed = 0
}