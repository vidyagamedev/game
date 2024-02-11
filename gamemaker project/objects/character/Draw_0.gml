/// @description Insert description here

if !
	(
		(
		keyboard_check(vk_lshift)
		)
		&&
		(
		keyboard_check(ord("1"))
		)	
	)
	{gpu_set_texfilter(false)};

//gpu_set_texfilter(false);
var localme=object_get_name(object_index);
draw_self();
gpu_set_texfilter(true);