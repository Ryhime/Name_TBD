//Draw Health Bar
draw_healthbar(objplayer.x - 40,objplayer.y + 32, objplayer.x - 35, objplayer.y - 32,global.playerhealth, c_black,c_red,c_green,2,true, true)
//Draw the Entire Inventory Screen//////////////////////////////////////////////////////////////////////////
if keyboard_check_pressed(vk_space)
{
	inv = true	
}
if inv = true
{
	inv1 = draw_sprite(sprinv,0,objplayer.x,objplayer.y)
	if (ds_list_size(global.inv) = 10)inv2 = draw_text(objplayer.x + 230,objplayer.y + 270,ds_list_size(global.inv))
	else if (ds_list_size(global.inv) < 10)inv2 = draw_text(objplayer.x + 240,objplayer.y + 270,ds_list_size(global.inv))

	inv3 = draw_text(objplayer.x + 260,objplayer.y + 270,"/10")
	inv4 = draw_text(objplayer.x + 20,objplayer.y + 270,"Inventory Space:")
	//Draw Inventory
	if (ds_list_size(global.inv) > 0)draw_text(objplayer.x - 280,objplayer.y - 280,ds_list_find_value(global.inv,0))
	if (ds_list_size(global.inv) > 1)draw_text(objplayer.x - 280,objplayer.y - 230,ds_list_find_value(global.inv,1))
	if (ds_list_size(global.inv) > 2)draw_text(objplayer.x - 280,objplayer.y - 180,ds_list_find_value(global.inv,2))
	if (ds_list_size(global.inv) > 3)draw_text(objplayer.x - 280,objplayer.y - 130,ds_list_find_value(global.inv,3))
	if (ds_list_size(global.inv) > 4)draw_text(objplayer.x - 280,objplayer.y - 80,ds_list_find_value(global.inv,4))
	if (ds_list_size(global.inv) > 5)draw_text(objplayer.x - 280,objplayer.y - 30,ds_list_find_value(global.inv,5))
	if (ds_list_size(global.inv) > 6)draw_text(objplayer.x - 280,objplayer.y + 20,ds_list_find_value(global.inv,6))
	if (ds_list_size(global.inv) > 7)draw_text(objplayer.x - 280,objplayer.y + 70,ds_list_find_value(global.inv,7))
	if (ds_list_size(global.inv) > 8)draw_text(objplayer.x - 280,objplayer.y + 120,ds_list_find_value(global.inv,8))
	if (ds_list_size(global.inv) > 9)draw_text(objplayer.x - 280,objplayer.y + 170,ds_list_find_value(global.inv,9))
	//Draw Money
	draw_text(objplayer.x - 280,objplayer.y + 270,"$")
	draw_text(objplayer.x - 260,objplayer.y + 270,global.money)
	//Close Inventory
	if keyboard_check(vk_escape)
	{
		inv1 = noone
		inv2 = noone
		inv3 = noone
		inv4 = noone
		inv = false
	}

}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////







