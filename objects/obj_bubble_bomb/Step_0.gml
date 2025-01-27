/// @desc
//move_bounce_all(false)
//if score <= 0 {
//game_restart()
//}


//if (int64(image_index) == 22 && !went_off) {
    //var _list = ds_list_create();
    //var _num = collision_circle_list(x, y, eff_radius, obj_bubble_td_enemy_parent, false, true, _list, false);
    //audio_play_sound(sfx_bomb,1,false)
    //
    //if (_num > 0)
    //{
        //for (var i = 0; i < _num; ++i)
        //{
            //// Change the image_index of the colliding obj_bubble_bounce to 24
            //_list[| i].image_index = 24;
        //}
        //var list_length = ds_list_size(_list);
        //var factorial = 1;
        //for (var i = 1; i <= list_length; i++) {
            //factorial *= i;
        //}
        //global.score += factorial;
    //}
    //went_off = true
//}
//
if (went_off){
    alarm[1] = 10;
}


if int64(image_index) >= 24 {
	audio_play_sound(_278933_Bubble_Pop_Button_1,1,false)
	instance_destroy()
}

