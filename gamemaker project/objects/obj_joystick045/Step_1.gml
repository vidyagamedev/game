/// @description Insert description here
if (touch_id != -1)
{
        if (device_mouse_check_button(touch_id, mb_left))
        {
                joy_x = device_mouse_x_to_gui(touch_id) - x;
                joy_y = device_mouse_y_to_gui(touch_id) - y;
        
                var _direction = point_direction(0, 0, joy_x, joy_y);
                var _distance = point_distance(0, 0, joy_x, joy_y);
        
                if (_distance > radius)
                {
					global.RSPress=false
                }
				else global.RSPress=true
        }
        else
        {global.RSPress=false}
}
