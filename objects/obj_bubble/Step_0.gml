/// @desc
if lives <= 0 {
	//pop remaining bubbles
	if image_index <= 24 {
		image_index = 24
	}
} else {
	if room == room_tap_to_pop or room == room_bubble_world_home {
		var safe_to_move = true
		for (var i = 0; i < 10; i++) {
		    if instance_place(x,y-1,obj_bubble) {
				safe_to_move= false
			}
		}
	
		//if leaving the room
		if y < 32 and room == room_tap_to_pop {
			if image_index <= 24 {
				lives--
				image_index = 24
			}
		}

		if safe_to_move and y > 16 {
			y--
		} 
	
		if int64(image_index) = 11 {
			image_index = 8
		}


	}
}
//always
if int64(image_index) >= 27 {
	audio_play_sound(_278933_Bubble_Pop_Button_1,1,false)
	instance_destroy()
}