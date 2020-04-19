hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(carry) sprite = sPlayerCarry else sprite = sPlayerSprite;
if(hInput != 0 or vInput != 0) {
	dir = point_direction(0,0,hInput,vInput);
	//show_debug_message(dir)
	
	moveX = lengthdir_x(spd, dir);
	moveY = lengthdir_y(spd, dir);
	collisionScriptGeneral(moveY, moveX);
	
} else {
	image_index = 0;
}