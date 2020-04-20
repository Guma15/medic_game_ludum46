/// @description -

var len 
var i;

draw_text(10, 550, "Comrade : ");
len = oPatient.hp;
for (i =0; i < len; i += 1) {
	draw_sprite(sHealth,1,100 + (len * (i + 1)) + (i * sprite_get_width(sHealth)),550);
}

if( oPatient.hp <= 0) {
	var xCamera = (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))/2;
	//var yCamera = (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))/2;
	var yCamera = (camera_get_view_height(view_camera[0]))/2;
	draw_text_transformed( xCamera, yCamera, "COMRADE DIED!", 5, 5, 0);
}

len = oPlayer.hp;
for (i =0; i < len; i += 1) {
	draw_sprite(sHealth,0,10 + (len * (i + 1)) + (i * sprite_get_width(sHealth)),585);
}

len = oPlayer.bandage;
for (i =0; i < len; i += 1) {
	draw_sprite(sBandage2,0,10 + (len * (i + 1)) + (i * sprite_get_width(sBandage2)),595);
}

len = oPlayer.morphine;
for (i =0; i < len; i += 1) {
	draw_sprite(sMorphine2,0,10 + (len * (i + 1)) + (i * sprite_get_width(sMorphine2)),625);
}

len = oPlayer.crutch;
for (i =0; i < len; i += 1) {
	draw_sprite(sCrutch2,0,10 + (len * (i + 1)) + (i * sprite_get_width(sCrutch2)),655);
}

len = oPlayer.medkit;
for (i =0; i < len; i += 1) {
	draw_sprite(sMedkit2,0,10 + (len * (i + 1)) + (i * sprite_get_width(sMedkit2)),685);
}

//draw_text(10, 585, "Health: " + string(oPlayer.hp));
//draw_text(10, 600, "Bandage: " + string(oPlayer.bandage));
//draw_text(10, 615, "Morphine: " + string(oPlayer.morphine));
//draw_text(10, 630, "Crutch: " + string(oPlayer.crutch));
//draw_text(10, 645, "Medkit: " + string(oPlayer.medkit));
