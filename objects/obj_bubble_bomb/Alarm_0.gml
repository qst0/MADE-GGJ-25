//image_index = 24
went_off = true

//with (obj_bubble_bounce) {
    //// If there is a collision with this object
    //if (collision_rectangle(left, top, right, bottom, true, true)) {
        //// Set the image_index of the colliding obj_bubble_bounce to 24
        //image_index = 24;
    //}
//}

var _list = ds_list_create();
var _num = collision_circle_list(x, y, eff_radius, obj_bubble_td_enemy_parent, false, true, _list, false);
audio_play_sound(sfx_bomb_V2,1,false)

if (_num > 0)
{
    for (var i = 0; i < _num; ++i)
    {
        // Change the image_index of the colliding obj_bubble_bounce to 24
        _list[| i].image_index = 24;
    }
    var list_length = ds_list_size(_list);
    var factorial = 1;
    for (var i = 1; i <= list_length; i++) {
        factorial *= i;
    }
    global.score += factorial;
}

