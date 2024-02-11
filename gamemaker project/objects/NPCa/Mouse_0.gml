/// @description Insert description here
// You can write your code in this editor
if instance_number(a_Player)>=1{


rndmi = global.mainplayer
var ax = a_Player.x
var ay = a_Player.y
if rndmi = 1 {instance_create_layer(ax,ay,"Instances",NPCa,{sprite_index: RAaRoll,bodyid:1});}
else if rndmi = 2 {instance_create_layer(ax,ay,"Instances",NPCa,{sprite_index: WGFall,bodyid:2});}
else if rndmi = 3 {instance_create_layer(ax,ay,"Instances",NPCa,{sprite_index: RHJump2,bodyid:3});}
else if rndmi = 4 {instance_create_layer(ax,ay,"Instances",NPCa,{sprite_index: MWIdle,bodyid:4});}
else if rndmi = 5 {instance_create_layer(ax,ay,"Instances",NPCa,{sprite_index: HKIdle,bodyid:5});}
else if rndmi = 6 {instance_create_layer(ax,ay,"Instances",NPCa,{sprite_index: FWIdle,bodyid:6});}
else if rndmi = 9||rndmi = 10 {allynui.enemycheck=0}
	//variable bodyid=-3,-4 is actually used...
else if rndmi =-1 {instance_create_layer(ax,ay,"Instances",NPCa,{sprite_index: EWIdle,bodyid:-1});}
else if rndmi=-2{instance_create_layer(ax,ay,"Instances",NPCa,{sprite_index: NBAttack15,bodyid:-2,_up: false,upp: false});}
instance_destroy(a_Player);


rndmi = bodyid
if rndmi = 1 {instance_create_layer(x,y,"Instances",a_Player,{sprite_index: RAaRoll,bodyid:1});}
else if rndmi = 2 {instance_create_layer(x,y,"Instances",a_Player,{sprite_index: WGFall,bodyid:2});}
else if rndmi = 3 {instance_create_layer(x,y,"Instances",a_Player,{sprite_index: RHJump2,bodyid:3});}
else if rndmi = 4 {instance_create_layer(x,y,"Instances",a_Player,{sprite_index: MWIdle,bodyid:4});}
else if rndmi = 5 {instance_create_layer(x,y,"Instances",a_Player,{sprite_index: HKIdle,bodyid:5});}
else if rndmi = 6 {instance_create_layer(x,y,"Instances",a_Player,{sprite_index: FWIdle,bodyid:6});}
else if rndmi = -1{instance_create_layer(x,y,"Instances",a_Player,{sprite_index: EWIdle,bodyid:-1});}
else if rndmi =-2{instance_create_layer(x,y, "Instances",a_Player,{sprite_index: NBAttack15,bodyid:-2,_up : false,upp: false});}
global.mainplayer = rndmi
instance_destroy();


}