execute unless score #player_hurt_dmg_type synb.Tmp.Ctx matches 1 run return 0

# Note : Very similar to the Pure Shield

execute at @e[type=!minecraft:player,tag=synb.type.enemy,distance=..3] run particle minecraft:poof ~ ~1 ~ 0 0 0 0.1 20
execute at @e[type=!minecraft:player,tag=synb.type.enemy,distance=..3] run playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1 0.5
execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..3] at @s run function synb:itemengine/player/damage_enemy_magic {dmg:3}

execute if score @s synb.IEExecCount.pushback matches 2.. as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..3] \
    store result entity @s Motion[1] double 0.8 run scoreboard players get @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEExecCount.pushback
execute if score @s synb.IEExecCount.pushback matches 2.. run return 0

tag @s add synb.arg.push_ref
execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..3] run function synb:utils/push_enemy
tag @s remove synb.arg.push_ref