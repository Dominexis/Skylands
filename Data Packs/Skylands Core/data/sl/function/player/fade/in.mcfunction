# Play a fade in animation
title @s times 0 0 20
title @s title {text:"A",font:"sl:fade",type:"text"}
title @s subtitle ""
title @s actionbar ""
scoreboard players set @s sl.fade_timer -21

# Put player onto queue team to prevent plots from affecting them
team join sl.queue @s[team=!sl.queue]

# Give player slow falling to prevent them from dying from fall damage
effect give @s minecraft:slow_falling 1 0 true
tag @s add sl.slow_falling_tick