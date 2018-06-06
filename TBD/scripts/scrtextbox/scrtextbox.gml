var x1 = argument0
var y1 = argument1
var text = argument2
var textbox = draw_sprite(sprtextbox,0,x1,y1)
var text1 = draw_text_ext(x1 - 150,y1 - 75,text,30,280)
if keyboard_check_pressed(vk_enter)
{
	textbox = noone
	text1 = noone
}