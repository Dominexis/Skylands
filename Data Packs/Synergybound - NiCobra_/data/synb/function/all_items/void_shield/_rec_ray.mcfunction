particle minecraft:sonic_boom ~ ~ ~ 0 0 0 1 1 force
execute as @e[type=!minecraft:player,tag=synb.type.enemy,tag=!synb.arg.damaged,distance=..2] run function synb:itemengine/player/damage_enemy_magic {dmg:3}
tag @e[type=!minecraft:player,tag=synb.type.enemy,distance=..2] add synb.arg.damaged

scoreboard players add #rec synb.Tmp.Arg 1
execute if score #rec synb.Tmp.Arg matches ..200 positioned ^ ^ ^0.3 if block ~ ~ ~ minecraft:air run function synb:all_items/void_shield/_rec_ray