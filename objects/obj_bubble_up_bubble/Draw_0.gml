/// @desc
var camera = view_camera[view_current];
var cameraViewAngle = camera_get_view_angle(camera)
draw_sprite_ext(bubble_iridescent,image_index,x,y,1,1,-cameraViewAngle,c_white,100)