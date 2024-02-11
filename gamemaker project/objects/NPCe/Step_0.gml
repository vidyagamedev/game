/// @description Insert description here
// You can write your code in this editor

if ( collision_rectangle(x + -200, y + -200, x + 200, y + 200, NPCa, true, 1) ) !=noone {
	direction = point_direction(x, y, NPCa.x, NPCa.y);}
else if ( collision_rectangle(x + -200, y + -200, x + 200, y + 200, a_Player, true, 1) ) !=noone {
	direction = point_direction(x, y, a_Player.x, a_Player.y);}
else direction = 90


if cos(degtorad(direction)) >0.1{
	_right=true;_move_x=1
	_left=false;}
else if cos(degtorad(direction)) <-0.1{
	_left=true;_move_x=-1
	_right=false;}
else{_left=false;
	_right=false;}

if ( collision_rectangle(x + -20, y + -20, x + 20, y + 20, a_Player, true, 1) ) !=noone {_space = true}
else if ( collision_rectangle(x + -20, y + -20, x + 20, y + 20, NPCa, true, 1) ) !=noone {_space = true}
else {_space = false}


// Inherit the parent event
event_inherited();

