/// @description Insert description here
// You can write your code in this editor

background_map = ds_map_create();
background_map[? layer_get_id("Backgrounds_12")] = 1
background_map[? layer_get_id("Backgrounds_11")] = 0.9
background_map[? layer_get_id("Backgrounds_10")] = 0.8
background_map[? layer_get_id("Backgrounds_09")] = 0.8
background_map[? layer_get_id("Backgrounds_08")] = 0.7
background_map[? layer_get_id("Backgrounds_07")] = 0.6
background_map[? layer_get_id("Backgrounds_06")] = 0.5
background_map[? layer_get_id("Backgrounds_05")] = 0.4
background_map[? layer_get_id("Backgrounds_04")] = 0.3
background_map[? layer_get_id("Backgrounds_03")] = 0.2
background_map[? layer_get_id("Backgrounds_02")] = 0.1
background_map[? layer_get_id("Backgrounds_01")] = -0.5

lay_id1 = layer_get_id("Assets_2");
lay_id3 = layer_get_id("Assets_1");
global.lay_x=0

_cx = camera_get_view_x(view_camera[0]);

xDIFF=0


global.BGMVMT=true
		
global._old_cx=0
global.new_cx=0