tag @s remove Walking
tag @s remove Idle
tag @s add Targeting
tag @s add TDMTimer1
execute on vehicle run data merge entity @s {NoAI:1}
function animated_java:ravaged_mind/animations/target01/tween {to_frame:0,duration:0}