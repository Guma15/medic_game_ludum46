/// @description -
cam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(view_camera[0]) / 2;
viewHeightHalf = camera_get_view_height(view_camera[0]) / 2;
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;