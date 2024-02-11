LMS=delta_time/global.legamespeed
var _l=0, _r=0,_lr;
if keyboard_check(vk_right)||global._move_x>0{_r=1}
if keyboard_check(vk_left)||global._move_x<0{_l=1}
if (_r-_l)>=0{_lr=1}else _lr=-1

var _xspd = 0.75 *_lr * LMS


var _cx = camera_get_view_x(view_camera[0]);




if instance_exists(a_Player){	
	if a_Player.x<70{
		camera_set_view_target(view_camera[0], noone);
		camera_set_view_pos(view_camera[0],a_Player.x-70,433)
	}
	else{
		camera_set_view_target(view_camera[0], a_Player);
		_cx += _xspd
		camera_set_view_pos(view_camera[0], _cx, 433);
	
	}
}else{
	_cx += _xspd
	camera_set_view_pos(view_camera[0], _cx, 433);
}
	
global.lay_x+=_xspd
layer_x(lay_id1, global.lay_x);
layer_x(lay_id3, global.lay_x);


var _b = ds_map_find_first(background_map);
repeat(ds_map_size(background_map))
    {
    layer_x(_b, background_map[? _b] * _cx);
    _b = ds_map_find_next(background_map, _b);
    }
