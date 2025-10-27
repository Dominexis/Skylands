# Increment fade timer
scoreboard players add @s sl.fade_timer 1

# Handle endings of fading
execute if score @s sl.fade_timer matches 0 run function sl:player/fade/end/in
execute if score @s sl.fade_timer matches 21 run function sl:player/fade/end/out