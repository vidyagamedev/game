/// @description DRAW BUTTON AND TEXT
// You can write your code in this editor


draw_text_transformed(320,80, string("Welcome") + "",.7, .7, 0);
//draw_sprite(Blacka___button, -1, 320, 130);
//switch()
//if rectangle_in_rectangle(320 - .2*543 , 244 - .2*127, 320 + .2*543 , 244 + .2*127, device_mouse_x_to_gui(0) - 50, device_mouse_y_to_gui(0) - 50, device_mouse_x_to_gui(0) + 50, device_mouse_y_to_gui(0) + 50){

//draw_sprite(Blacka___button, -1, x, y);
draw_sprite_ext( Blacka___button, -1, x1, y1, 0.4, 0.4, 0, c_white, .8);
draw_text_transformed(x1,y1, string("Play game?") + "",.4, .4, 0);
//
draw_sprite_ext( Blacka___button, -1, x2, y2, 0.4, 0.4, 0, c_white, .8);
draw_text_transformed(x1,y2, string("Select Character??") + "",.4, .4, 0);
