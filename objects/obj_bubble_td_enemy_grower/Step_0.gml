// Inherit the parent event
event_inherited();

var room_w = 768;
var room_h = 1366;

if (size > 1.4 && instance_number(obj_bubble_td_enemy_grower) < 6) {
	if ((x > obj_td_game.bubble_animations_v1_width + 96 + 2 && x < room_w - obj_td_game.bubble_animations_v1_width - 96 - 2) || (y > obj_td_game.bubble_animations_v1_width + 96 + 2 && y < room_h - obj_td_game.bubble_animations_v1_width - 96 - 2)) {
		// Make sure splitting won't lead to in the wall bugs
		size = 1;
		var _new_instance = instance_copy(true);
		_new_instance.direction = random(360);
		audio_play_sound(sfx_bubble_split,1,false);
		global.bubble_left++;
		if (x > obj_td_game.bubble_animations_v1_width + 96 + 2 && x < room_w - obj_td_game.bubble_animations_v1_width - 96 - 2) { 
			x += 96;
			_new_instance.x -= 96;
		} else if (y > obj_td_game.bubble_animations_v1_width + 96 + 2 && y < room_h - obj_td_game.bubble_animations_v1_width - 96 - 2) {
			y += 96;
			_new_instance.y -= 96;
		}
	}
}

// Max size to grow to
if (size < 2) {
	// Make sure it won't grow larger into a wall, making it immobile
	var new_size = size + 0.001;
	var new_xscale = scale * new_size;
	var new_yscale = scale * new_size;

	var left_edge = x - (sprite_width * new_xscale) / 2;
	var right_edge = x + (sprite_width * new_xscale) / 2;
	var top_edge = y - (sprite_height * new_yscale) / 2;
	var bottom_edge = y + (sprite_height * new_yscale) / 2;

	if (left_edge >= 0 && right_edge <= room_w && top_edge >= 0 && bottom_edge <= room_h) {
	    // Only grow if it fits
	    size = new_size;
	    image_xscale = new_xscale;
	    image_yscale = new_yscale;
	}
}