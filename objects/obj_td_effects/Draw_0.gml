///@description draw_lightning_continuous(x1, y1, x2, y2, color1, color2, alpha1, alpha2, minSize, maxSize, angle1, angle2, numLines)
///@param {real} x1 first x coordinate
///@param {real} y1 first y coordinate
///@param {real} x2 second x coordinate
///@param {real} y2 second x coordinate
///@param {color} color1 Color of the lightning
///@param {color} color2 Color of the lightning
///@param {real} alpha1 Minimum alpha
///@param {real} alpha2 Maximum alpha
///@param {real} minSize Minimum line thickness
///@param {real} maxSize Maximum line thickness
///@param {real} angle1 angle difference from origin
///@param {real} angle2 angle of difference from destination
///@param {real} #ofLines Number of lightning lines


function draw_lightning_continuous(){
///assign arguments to variables for legibility
xx1 = argument0;
yy1 = argument1;
xx2 = argument2;
yy2 = argument3;
color1 = argument4;
color2 = argument5;
alpha1 = argument6;
alpha2 = argument7;
minSize = argument8;
maxSize = argument9;
angle1 = argument10;
angle2 = argument11;
numLines = argument12;


//make sure alpha is full
draw_set_alpha(1);

repeat(numLines)
{
    //temp angle variables
    var useAngle1 = point_direction(xx1, yy1, xx2 + random_range(-angle1, angle1), yy2 + random_range(-angle1, angle1));
    var useAngle2 = point_direction(xx1, yy1, xx2 - random_range(-angle2, angle2), yy2 - random_range(-angle2, angle2));
    
    //temp distance variables
    var dist1 = point_distance(xx1, yy1, xx2, yy2)*random_range(.1, .3);
    var dist2 = point_distance(xx1, yy1, xx2, yy2)*random_range(.3, .5);
    var dist3 = point_distance(xx1, yy1, xx2, yy2)*random_range(.5, .7);
    var dist4 = point_distance(xx1, yy1, xx2, yy2)*random_range(.7, .9);
    
    //calculate the two midpoints of the line
    var p1x = xx1 + lengthdir_x(dist1, useAngle1);
    var p1y = yy1 + lengthdir_y(dist1, useAngle1);
    var p2x = xx1 + lengthdir_x(dist2, useAngle1);
    var p2y = yy1 + lengthdir_y(dist2, useAngle1);
    var p3x = xx1 + lengthdir_x(dist3, useAngle2);
    var p3y = yy1 + lengthdir_y(dist3, useAngle2);
    var p4x = xx1 + lengthdir_x(dist4, useAngle2);
    var p4y = yy1 + lengthdir_y(dist4, useAngle2);
    
    //set width per line
    var tempWidth = irandom_range(minSize, maxSize);
    
    //set alpha fade
    draw_set_alpha(random_range(alpha1, alpha2));
        
    //draw the main line
    draw_line_width_color(xx1, yy1, p1x, p1y, tempWidth, color1, color1);
    draw_line_width_color(p1x, p1y, p2x, p2y, tempWidth, color1, color1);
    draw_line_width_color(p2x, p2y, p3x, p3y, tempWidth, color1, color2);
    draw_line_width_color(p3x, p3y, p4x, p4y, tempWidth, color2, color2);
    draw_line_width_color(p4x, p4y, xx2, yy2, tempWidth, color2, color2);
}

//set alpha back to full
draw_set_alpha(1);
}



var i = 0;
show_debug_message(ds_list_size(global.current_lightning_effects))
while (i < ds_list_size(global.current_lightning_effects)) 
{
    var effect = global.current_lightning_effects[| i];

    var start_x = effect[0];
    var start_y = effect[1];
    var end_x = effect[2];
    var end_y = effect[3];
    var color1 = effect[4];
    var color2 = effect[5];
    var alpha1 = effect[6];
    var alpha2 = effect[7];
    var lifetime = effect[8];
    var start_time = effect[9];

    // Check if the effect time has expired
    if (current_time - start_time >= lifetime) {
        ds_list_delete(global.current_lightning_effects, i);  // Remove expired effect
    } 
    else 
    {
        // Draw the lightning effect
        draw_lightning_continuous(
            start_x, start_y, 
            end_x, end_y, 
            color1, color2, 
            alpha1, alpha2, 
            2, 4,    // Line thickness
            20, 15,  // Angle variation
            5        // Number of lines
        );

        i++;  // Move to the next element
    }
}