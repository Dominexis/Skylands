execute at @e[type=!minecraft:player,tag=synb.type.enemy,distance=..4] run particle minecraft:poof ~ ~1 ~ 0 0 0 0.1 20
execute at @e[type=!minecraft:player,tag=synb.type.enemy,distance=..4] run playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1 0.5

execute if score @s synb.IEExecCount.pure_shield matches 2.. as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..4] \
    store result entity @s Motion[1] double 0.8 run scoreboard players get @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEExecCount.pure_shield
execute if score @s synb.IEExecCount.pure_shield matches 2.. run return 0

execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..4] at @s run function synb:itemengine/player/damage_enemy_magic {dmg:3}

tag @s add synb.arg.push_ref
execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..4] run function synb:utils/push_enemy
tag @s remove synb.arg.push_ref