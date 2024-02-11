/// @description Insert description here

// Feather disable GM2017
Intimgindx=floor(image_index)//can use image_index unless checking specific frame
LMS=delta_time/global.legamespeed;
image_speed=0
image_index+=delta_time/((1/(sprite_get_speed(sprite_index)))*1000000)

										  
if ((sprite_index !=spJump)&&(sprite_index !=spAttack)&&(sprite_index!=spJump2)){
	//^these sprite actions are 'locked in' SO do this when not locked
	if _up{sprite_index=spJump	//AFTER JUMP SPRITE IS LOADED. ALSO NEED EXTRA CODE(?)
		image_index=0;}
	else if _space{sprite_index=spAttack;
		image_index=0;
		flip=image_xscale
		instance_create_layer(x , y, "Instances", obAttack,{
			sprite_index:HspAttack,
			image_xscale:flip});}
	else if _right || _left{sprite_index=sprWalk;
		if Bsndwalk=true && ((Intimgindx !=0) && (Intimgindx !=walkstep2)){
			Bsndwalk=false}
		else if Bsndwalk==false && ((Intimgindx ==0) || (Intimgindx ==walkstep2)){
			Bsndwalk=true
			grassS()}}
	else {sprite_index=sprIdle}
}
else {
	//certain actions to for locked in sprites
	if sprite_index==spJump{
		if image_index>=jumpframe{y -=(jumpspeed+2)*LMS
			if image_index>=jumpframe0{y +=LMS*(jumpspeed/2) ;	//slow down jump
				if image_index >= image_number-1{sprite_index=spJump2;
					image_index=0}}}}	//CHANGE CURRENT SPRITE TO AIR ROLL
	else if sprite_index==spJump2{y+=LMS*(2-1.8+fllspd);
		}
	else if sprite_index== spAttack
	{if image_index >= image_number-1{sprite_index=sprIdle;}}}


//move left or right...
if sprite_index!= spAttack{
	if _right{x += +(LMS)*1*_move_x;
		image_xscale = 1;}
	else if _left{x += -(LMS)*1*-_move_x;
		image_xscale = -1;}}



//when more platforms... if new y is higher than old y, then don't ignore
if x>=Object3.bbox_left && x<=Object3.bbox_right 
&& y>=Object3.bbox_top+LandY+1 &&y<=Object3.bbox_bottom {
	y=Object3.bbox_top +LandY
	sprite_index=sprIdle
	grassS()
	global.chkk1=false
}
else if x>=Object3.x-Object3.sprite_width && x<=Object3.bbox_right && y<Object3.bbox_top+LandY {
	y+=2*LMS
	}

