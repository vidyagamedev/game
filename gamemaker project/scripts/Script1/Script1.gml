// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function grassS(){
	audio_stop_sound(Grass_Running)
	//audio_play_sound_at(Grass_Running,xx,yy,0,1,0,1,false,10)
	audio_play_sound_at(Grass_Running, 640-x, y, 0, 100, 300, 1, false, 1);
	//audio_play_sound(Grass_Running,false,10)
}

function radvCr(){
	sprIdle=RAIdle;
	sprWalk=RAWalk;
	spJump=RAJump;
	spJump2=RAaRoll;
	spAttack=RAAttack1;
	jumpframe=2;
	jumpspeed=3.5;
	walkstep2=3;
	jumpframe0=3;
	LandY=-16.75
	HspAttack=RAAttack1H
	fllspd=0
	myd=2.75
}

function waglCr(){
	sprIdle=WGIdle
	sprWalk=WGRun;
	spJump=WGJump;
	spJump2=WGFall;
	spAttack=WGAttack;
	jumpframe=2;
	jumpspeed=2.25;
	walkstep2=4;
	jumpframe0=4;
	LandY=-19.75;
	HspAttack=WGAttackH
	fllspd=0
	myd=3.5
}

function nbCr
(){
	sprIdle=NBIdle;
	sprWalk=NBRun;
	spJump=false
	spJump2=false;
	spAttack=NBAttack;
	jumpframe=2;
	jumpspeed=3;
	walkstep2=3;
	jumpframe0=4;
	LandY=-21.75;
	HspAttack=NBAttackH
	fllspd=0
	myd=1
}


function rhCr(){
	sprIdle=RHIdle
	sprWalk=RHRun;
	spJump=RHJump;
	spJump2=RHJump2;
	spAttack=RHAttack1;
	jumpframe=1;
	jumpspeed=2
	walkstep2=12;
	jumpframe0=4;
	LandY=-19.75;
	HspAttack=RHAttack1H
	fllspd=-0
	myd=4.5
}

function mwCr(){
	sprIdle=MWIdle
	sprWalk=MWRun;
	spJump=MWJump;
	spJump2=MWFall;
	spAttack=MWAttack1;
	jumpframe=1;
	jumpspeed=3;
	walkstep2=3;
	jumpframe0=2;
	LandY=-19.75;
	HspAttack=MWAttack1H
	fllspd=-0.369
	myd=5.5
}

function hkCr(){
	sprIdle=HKIdle
	sprWalk=HKRun;
	spJump=HKJump;
	spJump2=HKFall;
	spAttack=HKAttack;
	jumpframe=0;
	jumpspeed=2.5;
	walkstep2=5;
	jumpframe0=2;
	LandY=-19.75;
	HspAttack=HKAttackH
	fllspd=-0
	myd=7
}

function ewCr(){
	sprIdle=EWIdle
	sprWalk=EWRun;
	spJump=EWJump;
	spJump2=EWFall;
	spAttack=EWAttack;
	jumpframe=0;
	jumpspeed=2.5;
	walkstep2=5;
	jumpframe0=2;
	LandY=-19.75;
	HspAttack=EWAttackH
	fllspd=-0
	myd=2
}


function fwCr(){
	sprIdle=FWIdle
	sprWalk=FWRun;
	spJump=FWJump;
	spJump2=FWFall;
	spAttack=FWAttack;
	jumpframe=1;
	jumpspeed=2.5;
	walkstep2=5;
	jumpframe0=3;
	LandY=-19.75;
	HspAttack=FWAttackH
	fllspd=-0
	myd=9
}


//function rset(){
//	global.lay_x=0
//	global.firstrun=false
//	game_restart()
//}
	
	
function layer_shader_start()
{
    if event_type == ev_draw
    {
        if event_number == 0
        {
			gpu_set_texfilter(false);
		}
    }
}
function layer_shader_shift()
{
    if event_type == ev_draw
    {
        if event_number == 0
        {
			if (
				(
				keyboard_check(vk_lshift)
				)
				&&
				(
				keyboard_check(ord("2"))
				)	
			)||global.BGMVMT==false
			{gpu_set_texfilter(false)};
}
    }
}

function layer_shader_end()
{
    if event_type == ev_draw
    {
        if event_number == 0
        {
			gpu_set_texfilter(true);
        }
    }
}



function pCr(){
	sprIdle=PIdle
	sprWalk=PMove;
	spJump=false;
	spJump2=false;
	spAttack=PIdle74;
	jumpframe=1;
	jumpspeed=2
	walkstep2=12;
	jumpframe0=4;
	LandY=-19.75;
	HspAttack=PIdleH
	fllspd=-0
	myd=4.5
}

function BACr(){
	sprIdle=BAIdle
	sprWalk=BAIdle;
	spJump=false;
	spJump2=false;
	spAttack=BAIdle77;
	jumpframe=1;
	jumpspeed=2
	walkstep2=12;
	jumpframe0=4;
	LandY=-19.75;
	HspAttack=BAIdleH
	fllspd=-0
	myd=4.5
}