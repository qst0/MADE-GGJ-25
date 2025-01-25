/// @descr
draw_text(50,50,idle_score)
if idle_score < 10 {
draw_text(50,100,"You need to try to pop this thing")
}
if idle_score >= 10 and idle_score < 100 {
draw_text(50,100,"Seems to be a strong bubble")
}