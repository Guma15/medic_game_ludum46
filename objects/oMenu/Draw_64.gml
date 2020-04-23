/// @description -


var xCamera = (camera_get_view_width(view_camera[0]));
var yCamera = (camera_get_view_height(view_camera[0]))/2;


draw_set_font(fSmall);
draw_set_halign(fa_left);

draw_text(10, 20, "press 'Z' to shoot");
draw_text(10, 40, "press 'x' to carry/climb");
draw_text(10, 60, "press 'c' to heal");
draw_text(10, 80, "arrow keys to move");

draw_set_halign(fa_center);
draw_text(xCamera, 120, "Your goal is to carry your fallen brother in arms to the CCP.");	
draw_text(xCamera, 140, "For some reason, its located far behind enemy lines.");
draw_text(xCamera, 160, "Make sure you get him there before he bleeds out!");
draw_text(xCamera, 180, "Good luck!");

draw_set_halign(fa_left);

draw_sprite(sBandage2, 0, 10, 220);
draw_text(50, 220, "Cures");
draw_sprite(sStatus, 0, 110, 220);
draw_text(140, 220, "Which makes your comrade bleed faster");

draw_sprite(sMorphine2, 0, 10, 240);
draw_text(50, 240, "Cures");
draw_sprite(sStatus, 1, 110, 240);
draw_text(140, 240, "Which makes you drop your comrade");

draw_sprite(sCrutch2, 0, 10, 260);
draw_text(50, 260, "Cures");
draw_sprite(sStatus, 2, 110, 260);
draw_text(140, 260, "Which makes you carry slower");

draw_sprite(sMedkit2, 0, 10, 280);
draw_text(50, 280, "Heals you when your health runs out, or heals your comrade");





draw_set_halign(fa_center);
draw_text(xCamera, 660, "Press 'Shoot' to continue")



draw_set_halign(fa_left);