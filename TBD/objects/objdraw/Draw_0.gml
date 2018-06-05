//Draw Health Bar
draw_healthbar(objplayer.x - 40,objplayer.y + 32, objplayer.x - 35, objplayer.y - 32,global.playerhealth, c_black,c_red,c_green,2,true, true)
if keyboard_check_pressed(vk_enter)
{
	inv = true	
}
if inv = true
{
	inv1 = draw_sprite(sprinv,0,objplayer.x,objplayer.y)
	inv2 = draw_text(objplayer.x + 240,objplayer.y + 270,ds_list_size(global.inv))
	inv3 = draw_text(objplayer.x + 260,objplayer.y + 270,"/10")
	inv4 = draw_text(objplayer.x + 20,objplayer.y + 270,"Inventory Space:") 
}