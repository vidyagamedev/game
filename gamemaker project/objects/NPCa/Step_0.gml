/// @description Insert description here
// You can write your code in this editor
if global.chkk1=true
{
	chck1=true
}
else chck1=false

if instance_exists(a_Player)&&allynui.enemycheck>=0{
	if !atak{
		if ( collision_rectangle(x + -200, y + -200, x + 500, y + 200, NPCe, true, 1) ) !=noone
		{//find and attack enemy
			direction = point_direction(x, y, NPCe.x, NPCe.y);
		}
		else if !chck1
		{//move to position beside player
			if collision_rectangle(x-5 +myd*15-10, y + -200, x-5+myd*15-2, y + 200, a_Player, true, 1) =noone
			{
				direction = point_direction(x, y, a_Player.x+5-myd*15, a_Player.y)
			}
			else direction=90
		}
	}
	else //if atak. walk back to player
	{
		direction = point_direction(x, y, a_Player.x, a_Player.y)
		if ( collision_rectangle(x + -20, y + -20, x + 20, y + 20, a_Player, true, 1) ) !=noone {
		atak=false
		}
	}
}
		

if ( collision_rectangle(x + -20, y + -20, x + 20, y + 20, NPCe, true, 1) ) !=noone {_space = true
	atak=true;
	direction = point_direction(x, y, NPCe.x, NPCe.y);
	}
else {_space = false}

if cos(degtorad(direction)) >0.1{_right=true;_move_x=1
	_left=false;}
else if cos(degtorad(direction)) <-0.1{_left=true;_move_x=-1
	_right=false;}
else{_left=false;
	_right=false;}
// Inherit the parent event
event_inherited();