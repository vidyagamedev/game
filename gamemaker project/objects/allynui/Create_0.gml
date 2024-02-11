/// @description Insert description here
// You can write your code in this editor
//alarm_set(0,30);
// Set Font
draw_set_font(fnt_button);

// Set Text Alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


alarm[0]=30
cally=2
enemycheck=-1
touched=false
dudeX=x


spawnplayer = function()//create room code would make more sense for this.
					//but also, the function is only caleld, also only at the start. only once per game, per reset
{
	global.idbody = 
	{
	    radv : false,
	    wagl : false,
	    rh : false,
	    mw : false,
	    hk : false,
	    fw : false,
	    ew : 0,
	    nb : 0
	};
//player selection
	if visible = false{
		var rndmi = 9+irandom(1) //use case instead of if statement
	}
	else if visible = true{
		var rndmi = irandom(10) //use case instead of if statement
	}
	if rndmi <= 1 {instance_create_layer(250,250,"Instances",a_Player,{sprite_index: RAaRoll,bodyid:1});}
	else if rndmi = 2 {instance_create_layer(-5, 490,"Instances",a_Player,{sprite_index: WGFall,bodyid:2});}
	else if rndmi = 3 {instance_create_layer(-5, 490,"Instances",a_Player,{sprite_index: RHJump2,bodyid:3});}
	else if rndmi = 4 {instance_create_layer(-5, 490,"Instances",a_Player,{sprite_index: MWIdle,bodyid:4});}
	else if rndmi = 5 {instance_create_layer(-5, 490,"Instances",a_Player,{sprite_index: HKIdle,bodyid:5});}
	else if rndmi = 6 {instance_create_layer(-5, 490,"Instances",a_Player,{sprite_index: FWIdle,bodyid:6});}
	else if rndmi = 7 {rndmi=-1
		instance_create_layer(5, 490,"Instances",a_Player,{sprite_index: EWIdle,bodyid:-1});}
	else if rndmi = 8 {rndmi=-2
		instance_create_layer(5, 490, "Instances",a_Player,{sprite_index: NBAttack15,bodyid:-2,_up : false,upp: false});}
	else if rndmi = 9{//rndmi=0
		instance_create_layer(5, 490, "Instances",a_Player,{sprite_index: PIdle,bodyid:-3,_up : false,upp: false});}
	else if rndmi = 10 {//rndmi=0
		instance_create_layer(5, 490, "Instances",a_Player,{sprite_index: BAIdle,bodyid:-4,_up : false,upp: false});}

		if rndmi !=1 {instance_create_layer(298, 690,"Instances",NPCa,{sprite_index: RAaRoll,bodyid:1})}
		if rndmi !=2 {instance_create_layer(240, 690,"Instances",NPCa,{sprite_index: WGFall,bodyid:2})}
		if rndmi !=3 {instance_create_layer(187, 690,"Instances",NPCa,{sprite_index: RHJump2,bodyid:3})}
		if rndmi !=4 {instance_create_layer(133, 690,"Instances",NPCa,{sprite_index: MWIdle,bodyid:4})}
		if rndmi !=5 {instance_create_layer(92, 690,"Instances",NPCa,{sprite_index: HKIdle,bodyid:5})}
		if rndmi !=6 {instance_create_layer(32, 690,"Instances",NPCa,{sprite_index: FWIdle,bodyid:6})}

global.mainplayer = rndmi
	//instance_create_layer(250,250,"Instances",NPCa,{sprite_index: RHJump2,bodyid:3});
}

if visible = false{spawnplayer()}


else if variable_global_exists("firstrun") {//visible=false
	//spawnplayer()	
	//global.lay_x=0
	//camera_set_view_pos(view_camera[0], 0, 313);
	//enemycheck=0
}
else {
	//instance_create_layer(x, y-410, "Instances",button)
	//instance_create_layer(x, y-410, "Instances",button)
	//instance_create_layer(320,244, "Instances",button)
	//instance_create_layer(50,50, "Instances",button)
}

//if rectangle_in_rectangle(320 - .2*543 , 244 - .2*127, 320 + .2*543 , 244 + .2*127, m__x - 5, m__y - 5, m__x + 5, m__y + 5){

//arrayvariable =
//	{
	    bx =.2*543	//size of button
	    by= .2*127
		x1=320		//position of first button
		y1=169
		x2=320		//position of secpnd button
		y2=233

	    //x___2 : 320 + .2*543,
	    //y___2: false,
	    //x___3 : false,
	    //y___3: false,
		//buttonz:3
	//};

