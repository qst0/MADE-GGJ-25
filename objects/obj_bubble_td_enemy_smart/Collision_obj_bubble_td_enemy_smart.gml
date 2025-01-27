

//var room_w = 768;
//var room_h = 1366;
//
//if (x > room_w/2 && x > other.x && x < room_w - sprite_width) {
	//x += 96;
//} else if (x < room_w/2 && x < other.x && x > sprite_width) {
	//x -= 96;
//} else {
	//instance_destroy();
//}
if (collison_cooldown <= 0) {
    

    
    direction = point_direction(other.x, other.y, x, y);
    
    r = random(1)
    if (r <= evolve_prob) {
        show_debug_message(string(r))
        evolve_lvl ++
        if (evolve_lvl == 3){
            other.image_index = image_index_explode_start
        }
        audio_play_sound(sfx_bubble_join,1,false)
    }
    
    collison_cooldown=120

}