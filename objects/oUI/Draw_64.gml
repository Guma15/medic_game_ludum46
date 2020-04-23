/// @description -

var xCamera = (camera_get_view_width(view_camera[0]));
var yCamera = (camera_get_view_height(view_camera[0]))/2;

var len 
var i;
draw_set_font(fSmall);

len = oPlayer.bandage;
for (i =0; i < len; i += 1) {
	draw_sprite(sBandage2,0,10 + (len * (i + 1)) + (i * sprite_get_width(sBandage2)),530);
}

len = oPlayer.morphine;
for (i =0; i < len; i += 1) {
	draw_sprite(sMorphine2,0,10 + (len * (i + 1)) + (i * sprite_get_width(sMorphine2)),560);
}

len = oPlayer.crutch;
for (i =0; i < len; i += 1) {
	draw_sprite(sCrutch2,0,10 + (len * (i + 1)) + (i * sprite_get_width(sCrutch2)),590);
}

len = oPlayer.medkit;
for (i =0; i < len; i += 1) {
	draw_sprite(sMedkit2,0,10 + (len * (i + 1)) + (i * sprite_get_width(sMedkit2)),620);
}

draw_text(10, 655, "Comrade HP : ");
len = oPatient.hp;
for (i =0; i < len; i += 1) {
	draw_sprite(sHealth,3,132 + (len * (i + 1)) + (i * sprite_get_width(sHealth)),655);
}

if( oPatient.hp <= 0) {
	draw_set_halign(fa_center);
	draw_text_transformed( xCamera, yCamera, "COMRADE DIED!", 5, 5, 0);
	draw_set_halign(fa_left);
}
draw_text(10, 685, "Your HP : ");
len = oPlayer.hp;
for (i =0; i < len; i += 1) {
	draw_sprite(sHealth,2,100 + (len * (i + 1)) + (i * sprite_get_width(sHealth)),685);
}

draw_text(192, 655, "Blood : " + string(max(0, round(time))));

if(time <= 0)
{
	draw_set_halign(fa_center);
	draw_text_transformed( xCamera, yCamera, "COMRADE BLED OUT!", 5, 5, 0);
	draw_set_halign(fa_left);	
	endTimer = endTimer - 1/room_speed;		
}

if(oPlayer.win)
{
	draw_set_halign(fa_center);
	draw_text_transformed( xCamera, yCamera, "YOU SAVED!", 5, 5, 0);
	draw_set_halign(fa_left);	
}

if(oPlayer.lose)
{
	draw_set_halign(fa_center);
	draw_text_transformed( xCamera, yCamera + 100, "YOU LOSE!", 5, 5, 0);
	draw_set_halign(fa_left);
}


//draw_text(10, 585, "Health: " + string(oPlayer.hp));
//draw_text(10, 600, "Bandage: " + string(oPlayer.bandage));
//draw_text(10, 615, "Morphine: " + string(oPlayer.morphine));
//draw_text(10, 630, "Crutch: " + string(oPlayer.crutch));
//draw_text(10, 645, "Medkit: " + string(oPlayer.medkit));
