smart_mode = true;
image_blend = c_blue;

if (x > room_width/2 && x > other.x && x < room_width - sprite_width) {
	x += 96;
} else if (x < room_width/2 && x < other.x && x > sprite_width) {
	x -= 96;
}

direction = point_direction(x, y, room_width / 2, room_height / 2);