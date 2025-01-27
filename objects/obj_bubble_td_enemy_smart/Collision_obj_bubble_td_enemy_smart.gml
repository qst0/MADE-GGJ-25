smart_mode = true;
image_blend = c_blue;

var room_w = 768;
var room_h = 1366;

if (x > room_w/2 && x > other.x && x < room_w - sprite_width) {
	x += 96;
} else if (x < room_w/2 && x < other.x && x > sprite_width) {
	x -= 96;
} else {
	instance_destroy();
}

direction = point_direction(x, y, room_w / 2, room_h / 2);