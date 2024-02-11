/// @description Insert description here
// You can write your code in this editor
Bsndwalk=false;
Intimgindx=0;

_move_x = 0
_move_y = 0

//"people who change variable name suffixes and have logic explicitly dependent on that"
//"should use maps instead."
if bodyid == 1 then {radvCr();
	global.idbody.radv = true;}
else if bodyid == 2 then {waglCr();
	global.idbody.wagl = true;}
else if bodyid == 3 then {rhCr();
	global.idbody.rh = true}
else if bodyid == 4 then {mwCr();
	global.idbody.mw = true}
else if bodyid == 5 then {hkCr();
	global.idbody.hk = true}
else if bodyid == 6 then {fwCr();
	global.idbody.fw = true}
else if bodyid == -1 then {ewCr();
	global.idbody.ew += 1};
else if bodyid == -2 then {nbCr();
	global.idbody.nb += 1};
else if bodyid == -3 then {pCr()};
else if bodyid == -4 then {BACr()};

//should use maps instead.
gethit = function()
{//yes this is really the syntax for creating functions aka methods or whatever
	if object_get_name(object_index)== "NPCa" ||object_get_name(object_index)==  "a_Player" {
		hp += -1;
		if(hp == 0){
			instance_destroy();
			effect_create_above(0, x + 0, y + 0, 0, $FFFFFF & $ffffff);
			if bodyid == 1 then {global.idbody.radv = false;};
			else if bodyid == 2 then {global.idbody.wagl = false;};
			else if bodyid == 3 then {global.idbody.rh = false};
			else if bodyid == 4 then {global.idbody.mw = false};
			else if bodyid == 5 then {global.idbody.hk = false};
			else if bodyid == 6 then {global.idbody.fw = false};
			else if bodyid == -1 then {global.idbody.ew -= 1};
			else if bodyid == -2 then {global.idbody.nb -= 1};
		}
	}// if enemy
}//elseif hp =0
