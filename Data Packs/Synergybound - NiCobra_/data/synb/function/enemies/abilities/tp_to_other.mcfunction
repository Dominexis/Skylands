# As/At : protector (enemy)
##

effect clear @s minecraft:glowing

# Select enemy (can't use ctx, have to recalculate)
execute at @e[type=minecraft:marker,tag=synb.mark.arena,sort=nearest,limit=1,distance=..40] run tag @e[type=!minecraft:endermite,type=!minecraft:slime,tag=synb.type.enemy,tag=!synb.attr.mite_protected,distance=..40] add synb.tmp.tp_candidate
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_candidate,sort=furthest,limit=1] add synb.tmp.tp_target
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_candidate] remove synb.tmp.tp_candidate

# Always dismount
ride @s dismount

# TP cooldown
execute if score @s synb.Enemy.GenericCD matches 1.. run return 0

# Don't TP if no target
execute unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target,limit=1] run scoreboard players set @s synb.Enemy.GenericCD 30
execute unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target,limit=1] run playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 0.7 1.3
execute unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target,limit=1] run return 0

# Arc
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target] add synb.arg.particle_arc_target
scoreboard players set #particle synb.Tmp.Arg 1
function synb:utils/visuals/start_arc
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target] remove synb.arg.particle_arc_target

# TP
particle minecraft:flash{color:[0.8,0.3,1.0,1.0]} ~ ~0.3 ~ 0 0 0 1 1
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 2
tp @s @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target,limit=1]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 2

# Protect
effect give @s minecraft:glowing infinite 0 true
data merge entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target,limit=1] {Invulnerable:1b}
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target,limit=1] add synb.attr.mite_protected
ride @s mount @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target,limit=1]

tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target] remove synb.tmp.tp_target