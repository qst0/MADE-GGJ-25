/// @desc
var safe_to_move = true
for (var i = 0; i < 10; i++) {
    if instance_place(x,y-1,obj_bubble) {
		safe_to_move= false
	}
}

if safe_to_move and y > 16 {
	y--
}
if int64(image_index) = 11 {
	image_index = 8
}

if int64(image_index) >= 27 {
	audio_play_sound(_278933_Bubble_Pop_Button_1,1,false)
	instance_destroy()
}