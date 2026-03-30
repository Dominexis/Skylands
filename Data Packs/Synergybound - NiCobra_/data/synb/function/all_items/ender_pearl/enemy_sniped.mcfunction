particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 1 1

# TP
execute positioned as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.ctx.enemy_killed_detector,limit=1] run tp @s ~ ~-1.5 ~
execute at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~

particle minecraft:reverse_portal ~ ~ ~ 1 1 1 3 200
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 1 1
playsound minecraft:entity.enderman.teleport player @a

effect give @s minecraft:resistance 1 9 true

execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..5] run function synb:itemengine/player/damage_enemy_magic {dmg:6}

tag @s add synb.arg.push_ref
execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..5] run function synb:utils/push_enemy
tag @s remove synb.arg.push_ref