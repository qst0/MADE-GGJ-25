/// @desc
draw_text(20,20,"Score: "+string(global.score))
draw_text(200,20,"Ammo: "+string(ammo_left))

if global.bubble_left == 0//instance_number(obj_bubble_bounce) == 0
{
    // Get the viewport dimensions
    var viewport_width = view_wport;  // View width
    var viewport_height = view_hport; // View height
    
    // Calculate the position to center the text
    var text = "You won!";
    var text_width = string_width(text);
    var text_height = string_height(text);
    
    // Draw the text at the center of the viewport
    draw_text(viewport_width / 2 - text_width / 2 + view_xview[0], viewport_height / 2 - text_height / 2 + view_yview[0], text);
    alarm[0] = 300;
}
    