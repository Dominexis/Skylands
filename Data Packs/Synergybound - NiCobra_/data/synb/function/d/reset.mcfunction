kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=!sl.collectible]
function synb:g_full_unregister
function synb:g_full_init
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,gamemode=adventure] at @s run function synb:itemengine/player/join
tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[Synb] ","color":"gray"},{"text":"Island reset.","color":"white"}]