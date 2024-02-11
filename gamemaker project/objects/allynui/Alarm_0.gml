/// @description ALLY RESPAWN TIMER


var _cx = camera_get_view_x(view_camera[0]);
if instance_number(a_Player)>0{
	if global.mainplayer>=0 && instance_number(NPCa)<5{
		if cally==1&&global.idbody.radv = false{
			instance_create_layer(_cx -5, 690,"Instances",NPCa,{sprite_index: RAaRoll,bodyid:1});}
		else if cally==2&&global.idbody.wagl = false{
			instance_create_layer(_cx -5, 690,"Instances",NPCa,{sprite_index: WGFall,bodyid:2});}
		else if cally==3&&global.idbody.rh = false{
			instance_create_layer(_cx -5, 690,"Instances",NPCa,{sprite_index: RHJump2,bodyid:3});}
		else if cally==4&&global.idbody.mw = false{
			instance_create_layer(_cx -5, 690,"Instances",NPCa,{sprite_index: MWIdle,bodyid:4});}
		else if cally==5&&global.idbody.hk = false{
			instance_create_layer(_cx -5, 690,"Instances",NPCa,{sprite_index: HKIdle,bodyid:5});}
		else if cally==6&&global.idbody.fw = false{
			instance_create_layer(_cx -5, 690,"Instances",NPCa,{sprite_index: FWIdle,bodyid:6});}
		if cally==6{
			cally=1}
		else {cally +=1}
	}
	else if global.mainplayer=-1{
		//timer-=100
		if global.idbody.ew <2{
			instance_create_layer(_cx -5, 690,"Instances",NPCa,{sprite_index: EWIdle,bodyid:-1});
			}
		else if global.idbody.nb <5{
			instance_create_layer(_cx -5, 690,"Instances",NPCa,{sprite_index: NBAttack15,bodyid:-2});
		}
	}
	else if global.mainplayer=-2{
		//timer-=150
		if global.idbody.ew <2{
			instance_create_layer(_cx -6, 690,"Instances",NPCa,{sprite_index: EWIdle,bodyid:-1});
		}
		else if global.idbody.nb <5{
			instance_create_layer(_cx -6, 690,"Instances",NPCa,{sprite_index: NBAttack15,bodyid:-2});
		}
	}
}
alarm[0]=30