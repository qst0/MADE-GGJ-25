image_index = 27

//with (obj_bubble_bounce) {
    //// If there is a collision with this object
    //if (collision_rectangle(left, top, right, bottom, true, true)) {
        //// Set the image_index of the colliding obj_bubble_bounce to 24
        //image_index = 24;
    //}
//}

var _list = ds_list_create();
var _num = collision_circle_list(x, y, effect_radius, obj_bubble_td_enemy_parent, false, true, _list, false);

if (_num > 0)
{
    for (var i = 0; i < _num; ++i)
    {
        // Change the image_index of the colliding obj_bubble_bounce to 24
        //_list[| i].image_index = 24;
        //_list[| i].lightning_eff = true;
        _list[| i].trigger_lightning(50, effect_radius)
        var this_x = x
        var this_y = y
        
        with (obj_td_effects){
            add_lightning_effect(this_x, this_y, _list[| i].x, _list[| i].y)
        }
        
    }
    var list_length = ds_list_size(_list);
}
