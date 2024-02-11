/// @description Insert description here
// You can write your code in this editor
var _mx = device_mouse_x_to_gui(0),
var _my = device_mouse_y_to_gui(0),
if rectangle_in_rectangle(x1 - bx, y1 - by, x1 + bx, y1 + by, _mx - 1, _my - 1, _mx + 1, _my + 1)
{
	if visible==true{
		spawnplayer()
		visible=false
		global.lay_x=0
		camera_set_view_pos(view_camera[0], 0, 313);
		enemycheck=0
	}
}
else if rectangle_in_rectangle(x2 - bx, y2 - by, x2 + bx, y2 + by, _mx - 1, _my - 1, _mx + 1, _my + 1)
{
	if visible==true{
		visible=false
		spawnplayer()	
		global.lay_x=0
		camera_set_view_pos(view_camera[0], 0, 313);
		//enemycheck=0
	}
}