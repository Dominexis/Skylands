# As/At : player
##

function synb:itemengine/player/quit

# [SKYLANDS: ROTATION]
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.hub] run tp @s ~ ~1 ~ 0 0

title @s times 0 60 30
title @s title {"text":"End of the run","bold":true}
title @s subtitle "Better luck next time !"
execute at @s run playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 0.7 0.6

tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[Synb] ","color":"gray"},{selector:"@s",color:"yellow"},{"text":" failed a run.","color":"white"}]