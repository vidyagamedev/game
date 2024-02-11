/// @description Insert description here
// You can write your code in this editor


// Feather disable GM2017
if keyboard_check(vk_space)||global.RSPress=true{_space = true}
else _space =false


if keyboard_check(vk_right)||global._move_x>0{_right=true}else _right=false
if keyboard_check(vk_left)||global._move_x<0{_left=true}else _left=false
 _move_x = 10*global._move_x
_move_y = 10*global._move_y
if keyboard_check(vk_left) {_move_x =-1}
if keyboard_check(vk_right) {_move_x =1}
if upp==true{
	_up = keyboard_check(vk_up);
	if global._move_y<0 {_up=true}
}


if _up||sprite_index=spJump||sprite_index=spJump2
{
	global.chkk1=true
}
else global.chkk1=false


if x<-265{x=-265}


// Inherit the parent event
event_inherited();