//Draw Health Bar
draw_set_font(fnt)
draw_healthbar(objplayer.x - 25,objplayer.y - 32, objplayer.x + 23, objplayer.y - 28,global.playerhealth, c_black,c_red,c_green,2,true, true)
//Draw the Entire Inventory Screen//////////////////////////////////////////////////////////////////////////
if keyboard_check_pressed(vk_space)
{
	inv = true	
}
if inv = true
{
	inv1 = draw_sprite(sprinv,0,scrgetx(),scrgety())
	if (ds_list_size(global.inv) = 10)inv2 = draw_text(scrgetx() + 550,scrgety() + 570,ds_list_size(global.inv))
	else if (ds_list_size(global.inv) < 10)inv2 = draw_text(scrgetx() + 555,scrgety() + 570,ds_list_size(global.inv))
	inv3 = draw_text(scrgetx() + 580,scrgety() + 570,"/ 10")
	inv4 = draw_text(scrgetx() + 395,scrgety() + 570,"Inventory Space:")
	//Draw Inventory
	if (ds_list_size(global.inv) > 0)draw_text(scrgetx() + 40,scrgety() + 50,ds_list_find_value(global.inv,0))
	if (ds_list_size(global.inv) > 1)draw_text(scrgetx() + 40,scrgety() + 100,ds_list_find_value(global.inv,1))
	if (ds_list_size(global.inv) > 2)draw_text(scrgetx() + 40,scrgety() + 150,ds_list_find_value(global.inv,2))
	if (ds_list_size(global.inv) > 3)draw_text(scrgetx() + 40,scrgety() + 200,ds_list_find_value(global.inv,3))
	if (ds_list_size(global.inv) > 4)draw_text(scrgetx() + 40,scrgety() + 250,ds_list_find_value(global.inv,4))
	if (ds_list_size(global.inv) > 5)draw_text(scrgetx() + 40,scrgety() + 300,ds_list_find_value(global.inv,5))
	if (ds_list_size(global.inv) > 6)draw_text(scrgetx() + 40,scrgety() + 350,ds_list_find_value(global.inv,6))
	if (ds_list_size(global.inv) > 7)draw_text(scrgetx() + 40,scrgety() + 400,ds_list_find_value(global.inv,7))
	if (ds_list_size(global.inv) > 8)draw_text(scrgetx() + 40,scrgety() + 450,ds_list_find_value(global.inv,8))
	if (ds_list_size(global.inv) > 9)draw_text(scrgetx() + 40,scrgety() + 500,ds_list_find_value(global.inv,9))
	//Draw Money
	draw_text(scrgetx() + 25,scrgety() + 570,"$")
	draw_text(scrgetx() + 40,scrgety() + 570,global.money)
	//Draw Quests
	draw_set_font(fntbold)
	draw_text(scrgetx() + 400,scrgety() + 50,"Quests")
	//Draw Indivdiual Quests
	draw_set_font(fnt)
	//Main Quest
	draw_text(scrgetx() + 350,scrgety() + 100,"Main:")
	draw_text_ext (scrgetx() + 400,scrgety() + 100,global.mainquest,25,200)
	//Side Quest 1
	draw_text(scrgetx() + 350,scrgety() + 200,"Side:")
	draw_text_ext(scrgetx() + 400,scrgety() + 200, global.sidequest1,25,200)
	//Side Quest 2
	draw_text(scrgetx() + 350,scrgety() + 300,"Side:")
	draw_text_ext(scrgetx() + 400,scrgety() + 300, global.sidequest1,25,200)
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








