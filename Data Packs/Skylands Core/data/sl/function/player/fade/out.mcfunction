# Play a fade in animation
title @s times 20 1000000 20
title @s title {text:"A",font:"sl:fade",type:"text"}
title @s subtitle ""
title @s actionbar ""
scoreboard players set @s sl.fade_timer 1

# Put player onto queue team to prevent plots from affecting them
team join sl.queue @s[team=!sl.queue]