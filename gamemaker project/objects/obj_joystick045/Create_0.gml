/// @description Insert description here
event_inherited();

joy_x = 0;
joy_y = 0;
touch_id = -1;

radius = sprite_width / 2;

input = function (_touch_id, _touch_x, _touch_y)
{
        touch_id = _touch_id;
}

global.RSPress=false