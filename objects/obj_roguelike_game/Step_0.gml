/// @desc

if bubble_created < num_bubble and step % 12 = 1{
	//instance_create_depth(
	//irandom_range(32,room_width-32),
	//irandom_range(32,room_height-32),
	//0,
	//obj_bubble_bounce
	//)
    
    var new_x = random(room_width - obj_width);
    var new_y = random(room_height - obj_height);
    
    if (!collision_rectangle(new_x - obj_width/2, new_y + obj_height/2, new_x + obj_width/2, new_y - obj_height/2, all, false, false)) {
        instance_create_depth(new_x, new_y, 0, obj_bubble_bounce);
        bubble_created ++;
    } else {
        //show_debug_message("Collision detected! Object not placed.");
    }
}
y+=10
step++