global.legamespeed=(1/60)*1000000;//16666.666666666666666666666666667

//audio_falloff_set_model(audio_falloff_inverse_distance);
audio_falloff_set_model(audio_falloff_exponent_distance_clamped);
audio_listener_position(320,240,0)

game_set_speed(30, gamespeed_fps);
global.chkk1=false
var lay_id = layer_get_id("Backgrounds_03");
layer_script_begin(lay_id, layer_shader_start);
layer_script_end(lay_id, layer_shader_end);

var lay_id = layer_get_id("Backgrounds_04");
layer_script_begin(lay_id, layer_shader_shift);
layer_script_end(lay_id, layer_shader_end);

var lay_id = layer_get_id("Backgrounds_05");
layer_script_begin(lay_id, layer_shader_start);
layer_script_end(lay_id, layer_shader_end);

var lay_id = layer_get_id("Backgrounds_08");
layer_script_begin(lay_id, layer_shader_start);
layer_script_end(lay_id, layer_shader_end);