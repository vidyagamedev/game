/// @description CHANGE POSITION OF menu
// You can write your code in this editor
if visible==true{x=dudeX+ global.lay_x}

if global._move_y!=0 || global._move_x!=0 ||global.RSPress=true {touched=true}
if touched=true {
	if global._move_y=0&&global._move_x=0&&global.RSPress=false{
		touched=false
		
		
		var _cx = camera_get_view_x(view_camera[0]);
		
		if enemycheck=0	&& global.mainplayer>=0 {enemycheck=1
			instance_create_layer(_cx +500, 690,"Instances",NPCe,{sprite_index: NBAttack15,bodyid:-2})
			instance_create_layer(_cx +510, 690,"Instances",NPCe,{sprite_index: NBAttack15,bodyid:-2})
			instance_create_layer(_cx +500, 690,"Instances",NPCe,{sprite_index: EWIdle,bodyid:-1})
		}
		else if enemycheck=0 && global.mainplayer<0 {enemycheck=1
			//CREATE ENEMIES OF TYPE ALLY npc
			instance_create_layer(_cx +480, 690,"Instances",NPCe,{sprite_index: RAaRoll,bodyid:1});
			instance_create_layer(_cx +480, 690,"Instances",NPCe,{sprite_index: WGFall,bodyid:2});
			instance_create_layer(_cx +480, 690,"Instances",NPCe,{sprite_index: RHJump2,bodyid:3});
			instance_create_layer(_cx +480, 690,"Instances",NPCe,{sprite_index: MWIdle,bodyid:4});
			instance_create_layer(_cx +480, 690,"Instances",NPCe,{sprite_index: HKIdle,bodyid:5});
			instance_create_layer(_cx +480, 690,"Instances",NPCe,{sprite_index: FWIdle,bodyid:6});
		}
		else if enemycheck==1 && !instance_exists(NPCe) {enemycheck=2
			instance_create_layer(_cx +5, 690, "Instances",NPCe,{sprite_index: PIdle,bodyid:-3})
			instance_create_layer(_cx +555, 690,"Instances",NPCe,{sprite_index: PIdle,bodyid:-3})
			instance_create_layer(_cx +525, 690,"Instances",NPCe,{sprite_index: PIdle,bodyid:-3})
			instance_create_layer(_cx +480, 690,"Instances",NPCe,{sprite_index: PIdle,bodyid:-3})
			instance_create_layer(_cx +525, 690,"Instances",NPCe,{sprite_index: PIdle,bodyid:-3})
			instance_create_layer(_cx +480, 690,"Instances",NPCe,{sprite_index: PIdle,bodyid:-3})
			instance_create_layer(_cx +605, 690,"Instances",NPCe,{sprite_index: PIdle,bodyid:-3})
			instance_create_layer(_cx +619, 690,"Instances",NPCe,{sprite_index: PIdle,bodyid:-3})
			instance_create_layer(_cx +666, 690,"Instances",NPCe,{sprite_index: PIdle,bodyid:-3})
			instance_create_layer(_cx +0, 690, "Instances", NPCe,{sprite_index: BAIdle,bodyid:-4})
			instance_create_layer(_cx +577, 690,"Instances",NPCe,{sprite_index: BAIdle,bodyid:-4})
			instance_create_layer(_cx +577, 690,"Instances",NPCe,{sprite_index: BAIdle,bodyid:-4})
			instance_create_layer(_cx +533, 690,"Instances",NPCe,{sprite_index: BAIdle,bodyid:-4})
			instance_create_layer(_cx +499, 690,"Instances",NPCe,{sprite_index: BAIdle,bodyid:-4})
			instance_create_layer(_cx +636, 690,"Instances",NPCe,{sprite_index: BAIdle,bodyid:-4})
			instance_create_layer(_cx +699, 690,"Instances",NPCe,{sprite_index: BAIdle,bodyid:-4})
		}
		else if (enemycheck==2 && !instance_exists(NPCe)) || (enemycheck>=0 && !instance_exists(a_Player)) {
			global.lay_x=0
			global.firstrun=false
			game_restart()
		}
	}
}